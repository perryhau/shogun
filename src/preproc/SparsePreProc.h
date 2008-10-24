/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 1999-2008 Soeren Sonnenburg
 * Copyright (C) 1999-2008 Fraunhofer Institute FIRST and Max-Planck-Society
 */

#ifndef _CSPARSEPREPROC__H__
#define _CSPARSEPREPROC__H__

#include "features/SparseFeatures.h"
#include "lib/common.h"
#include "preproc/PreProc.h"

#include <stdio.h>

template <class ST> class TSparse;
template <class ST> class CSparseFeatures;

/** Template class SparsePreProc, base class for preprocessors (cf. CPreProc)
 * that apply to CSparseFeatures
 *
 * Two new functions apply_to_sparse_feature_vector() and
 * apply_to_sparse_feature_matrix() are defined in this interface that need to
 * be implemented in each particular preprocessor operating on CSparseFeatures.
 *
 * */
template <class ST> class CSparsePreProc : public CPreProc
{
public:
	/** constructor
	 *
	 * @param name sparse preprocessor's name
	 * @param id sparse preprocessor's id
	 */
	CSparsePreProc(const char *name, const char* id) : CPreProc(name,id)
	{
	}

	/// apply preproc on feature matrix
	/// result in feature matrix
	/// return pointer to feature_matrix, i.e. f->get_feature_matrix();
	virtual TSparse<ST>* apply_to_sparse_feature_matrix(CSparseFeatures<ST>* f)=0;

	/// apply preproc on single feature vector
	/// result in feature matrix
	virtual TSparse<ST>* apply_to_sparse_feature_vector(TSparse<ST>* f, INT &len)=0;

  /// return that we are simple minded features (just fixed size matrices)
  inline virtual EFeatureClass get_feature_class() { return C_SPARSE; }
  
};
#endif
