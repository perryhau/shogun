/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Copyright (c) 2012, Sergey Lisitsyn, Fernando J. Iglesias García
 *
 * This code uses Any type developed by C. Diggins under Boost license, version 1.0.
 * http://www.boost.org/LICENSE_1_0.txt
 */

#ifndef TAPKEE_DEFINES_H_
#define TAPKEE_DEFINES_H_

#include <shogun/lib/tapkee/utils/any.hpp>
#include <shogun/lib/tapkee/utils/time.hpp>
#include <shogun/lib/tapkee/utils/logging.hpp>
#include <map>
#include <vector>
#include <utility>
#include <shogun/lib/tapkee/callbacks/traits.hpp>

#ifdef TAPKEE_EIGEN_INCLUDE_FILE
	#include TAPKEE_EIGEN_INCLUDE_FILE
#else 
	#ifndef TAPKEE_DEBUG
		#define EIGEN_NO_DEBUG
	#endif
	#define EIGEN_RUNTIME_NO_MALLOC
	#include <Eigen/Eigen>
	#include <Eigen/Dense>
	#if EIGEN_VERSION_AT_LEAST(3,1,0)
		#include <Eigen/Sparse>
	#else
		#define EIGEN_YES_I_KNOW_SPARSE_MODULE_IS_NOT_STABLE_YET
		#include <unsupported/Eigen/SparseExtra>
	#endif
#endif

#ifdef EIGEN_RUNTIME_NO_MALLOC
	#define RESTRICT_ALLOC Eigen::internal::set_is_malloc_allowed(false);
	#define UNRESTRICT_ALLOC Eigen::internal::set_is_malloc_allowed(true);
#else
	#define RESTRICT_ALLOC
	#define UNRESTRICT_ALLOC
#endif

namespace tapkee 
{

// Customizable types
#ifdef TAPKEE_CUSTOM_INTERNAL_NUMTYPE
	typedef TAPKEE_CUSTOM_INTERNAL_NUMTYPE DefaultScalarType;
#else
	//! default scalar value (currently only double is supported and tested, float is unstable)
	typedef double DefaultScalarType;
#endif
	//! dense vector type 
	typedef Eigen::Matrix<DefaultScalarType,Eigen::Dynamic,1> DenseVector;
	//! dense matrix type
	typedef Eigen::Matrix<DefaultScalarType,Eigen::Dynamic,Eigen::Dynamic> DenseMatrix;
	//! dense symmetric matrix (currently just dense matrix, can be improved later)
	typedef DenseMatrix DenseSymmetricMatrix;
	//! sparse weight matrix type
	typedef Eigen::SparseMatrix<DefaultScalarType> SparseWeightMatrix;
	//! default selfadjoint solver
	typedef Eigen::SelfAdjointEigenSolver<DenseMatrix> DefaultDenseSelfAdjointEigenSolver;
	//! default sparse solver
#ifdef EIGEN_YES_I_KNOW_SPARSE_MODULE_IS_NOT_STABLE_YET
	typedef Eigen::SimplicialCholesky<SparseWeightMatrix> DefaultSparseSolver;
#else
	typedef Eigen::SimplicialLDLT<SparseWeightMatrix> DefaultSparseSolver;
#endif

#ifdef TAPKEE_CUSTOM_PROPERTIES
	#include TAPKEE_CUSTOM_PROPERTIES
#else
	#define COVERTREE_BASE 1.3
#endif

//! Parameters that are used by the library
enum TAPKEE_PARAMETERS
{
	/* TAPKEE_METHOD */	REDUCTION_METHOD,
	/* unsigned int */ NUMBER_OF_NEIGHBORS,
	/* unsigned int */ TARGET_DIMENSION,
	/* unsigned int */ CURRENT_DIMENSION,
	/* TAPKEE_EIGEN_EMBEDDING_METHOD */ EIGEN_EMBEDDING_METHOD,
	/* TAPKEE_NEIGHBORS_METHOD */ NEIGHBORS_METHOD,
	/* unsigned int */ DIFFUSION_MAP_TIMESTEPS,
	/* DefaultScalarType */ GAUSSIAN_KERNEL_WIDTH,
	/* unsigned int */ MAX_ITERATION,
	/* bool */ SPE_GLOBAL_STRATEGY,
	/* DefaultScalarType */ SPE_TOLERANCE,
	/* unsigned int */ SPE_NUM_UPDATES,
	/* DefaultScalarType */ LANDMARK_RATIO,
	/* DefaultScalarType */ EIGENSHIFT,
	/* bool */ CHECK_CONNECTIVITY
};
//! Parameters map type
typedef std::map<TAPKEE_PARAMETERS, any> ParametersMap;

//! Dimension reduction method
//! All methods require 
enum TAPKEE_METHOD
{
	KERNEL_LOCALLY_LINEAR_EMBEDDING,
	NEIGHBORHOOD_PRESERVING_EMBEDDING,
	KERNEL_LOCAL_TANGENT_SPACE_ALIGNMENT,
	LINEAR_LOCAL_TANGENT_SPACE_ALIGNMENT,
	HESSIAN_LOCALLY_LINEAR_EMBEDDING,
	LAPLACIAN_EIGENMAPS,
	LOCALITY_PRESERVING_PROJECTIONS,
	DIFFUSION_MAP,
	ISOMAP,
	LANDMARK_ISOMAP,
	MULTIDIMENSIONAL_SCALING,
	LANDMARK_MULTIDIMENSIONAL_SCALING,
	STOCHASTIC_PROXIMITY_EMBEDDING,
	KERNEL_PCA,
	PCA,
	PASS_THRU,
	UNKNOWN_METHOD
};

//! Neighbors computation method
enum TAPKEE_NEIGHBORS_METHOD
{
	//! Brute force method with not least than 
	//! \f$ O(N N \log k) \f$ time complexity.
	//! Recommended to be used only in debug purposes.
	BRUTE_FORCE,
	//! Covertree-based method with \f$ O(\log N) \f$ time complexity.
	//! Recommended to be used as a default method.
	COVER_TREE,
	UNKNOWN_NEIGHBORS_METHOD
};

//! Eigendecomposition-based embedding methods enumeration
enum TAPKEE_EIGEN_EMBEDDING_METHOD
{
	//! ARPACK-based method (requires the ARPACK library
	//! binaries to be available around). Recommended to be used as a 
	//! default method. Supports both generalized and standard eigenproblems.
	ARPACK,
	//! Randomized method (implementation taken from the redsvd lib). 
	//! Supports only standard but not generalized eigenproblems.
	RANDOMIZED,
	//! Eigen library dense method (useful for debugging). Computes
	//! all eigenvectors thus can be very slow doing large-scale.
	EIGEN_DENSE_SELFADJOINT_SOLVER,
	UNKNOWN_EIGEN_METHOD
};

// Internal types
#define INTERNAL_VECTOR std::vector
#define INTERNAL_PAIR std::pair


#ifdef EIGEN_YES_I_KNOW_SPARSE_MODULE_IS_NOT_STABLE_YET
	namespace tapkee {
	template <typename T>
	struct Triplet
	{
		Triplet(unsigned int colIndex, unsigned int rowIndex, T valueT) : 
			col_(colIndex), row_(rowIndex), value_(valueT)
		{
		}
		unsigned int col() const { return col_; };
		unsigned int row() const { return row_; };
		T value() const { return value_; };
		unsigned int col_;
		unsigned int row_;
		T value_;
	};
	};
	typedef tapkee::Triplet<DefaultScalarType> SparseTriplet;
#else
	typedef Eigen::Triplet<DefaultScalarType> SparseTriplet;
#endif

typedef INTERNAL_VECTOR<SparseTriplet> SparseTriplets;
typedef INTERNAL_VECTOR<unsigned int> LocalNeighbors;
typedef INTERNAL_VECTOR<LocalNeighbors> Neighbors;
typedef INTERNAL_PAIR<DenseMatrix,DenseVector> EmbeddingResult;
typedef INTERNAL_PAIR<DenseMatrix,DenseVector> ProjectionResult;
typedef Eigen::DiagonalMatrix<DefaultScalarType,Eigen::Dynamic> DenseDiagonalMatrix;
typedef INTERNAL_VECTOR<unsigned int> Landmarks;
typedef INTERNAL_PAIR<SparseWeightMatrix,DenseDiagonalMatrix> Laplacian;
typedef INTERNAL_PAIR<DenseSymmetricMatrix,DenseSymmetricMatrix> DenseSymmetricMatrixPair;

#undef INTERNAL_VECTOR
#undef INTERNAL_PAIR


struct ProjectionImplementation
{
	virtual ~ProjectionImplementation()
	{
	}
	virtual DenseVector project(const DenseVector& vec) = 0;
};

struct ProjectingFunction
{
	ProjectingFunction(ProjectionImplementation* impl) : implementation(impl) {};
	inline DenseVector operator()(const DenseVector& vec)
	{
		return implementation->project(vec);
	}
	ProjectionImplementation* implementation;
};

} // namespace tapkee

#endif
