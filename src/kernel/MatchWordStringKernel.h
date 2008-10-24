/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 1999-2008 Soeren Sonnenburg
 * Copyright (C) 1999-2008 Fraunhofer Institute FIRST and Max-Planck-Society
 */

#ifndef _MATCHWORDSTRINGKERNEL_H___
#define _MATCHWORDSTRINGKERNEL_H___

#include "lib/common.h"
#include "kernel/StringKernel.h"
#include "features/StringFeatures.h"

/** The class MatchWordStringKernel computes a variant of the polynomial kernel
 * on strings of same length converted to a word alphabet. It is computed as
 * \f[
 * k({\bf x},{\bf x'})= \sum_{i=0}^L I(x_i=x'_i)+c)^d
 * \f]
 *
 * where I is the indicator function which evaluates to 1 if its argument is
 * true and to 0 otherwise.
 *
 * Note that additional normalisation is applied, i.e.
 * \f[
 *     k'({\bf x}, {\bf x'})=\frac{k({\bf x}, {\bf x'})}{\sqrt{k({\bf x}, {\bf x})k({\bf x'}, {\bf x'})}}
 * \f]
 */
class CMatchWordStringKernel: public CStringKernel<WORD>
{
	public:
		/** constructor
		 *
		 * @param size cache size
		 * @param d degree
		 */
		CMatchWordStringKernel(INT size, INT d);

		/** constructor
		 *
		 * @param l features of left-hand side
		 * @param r features of right-hand side
		 * @param degree degree
		 */
		CMatchWordStringKernel(CStringFeatures<WORD>* l, CStringFeatures<WORD>* r, INT degree);

		virtual ~CMatchWordStringKernel();

		/** initialize kernel
		 *
		 * @param l features of left-hand side
		 * @param r features of right-hand side
		 * @return if initializing was successful
		 */
		virtual bool init(CFeatures* l, CFeatures* r);

		/** load kernel init_data
		 *
		 * @param src file to load from
		 * @return if loading was successful
		 */
		virtual bool load_init(FILE* src);

		/** save kernel init_data
		 *
		 * @param dest file to save to
		 * @return if saving was successful
		 */
		virtual bool save_init(FILE* dest);

		/** return what type of kernel we are
		 *
		 * @return kernel type LINEAR
		 */
		virtual EKernelType get_kernel_type() { return K_MATCHWORD; }

		/** return the kernel's name
		 *
		 * @return name MatchWordString
		 */
		virtual const char* get_name() { return "MatchWordString"; }

	protected:
		/** compute kernel function for features a and b
		 * idx_{a,b} denote the index of the feature vectors
		 * in the corresponding feature object
		 *
		 * @param idx_a index a
		 * @param idx_b index b
		 * @return computed kernel function at indices a,b
		 */
		virtual DREAL compute(INT idx_a, INT idx_b);

	protected:
		/** degree */
		INT degree;
};

#endif /* _MATCHWORDSTRINGKERNEL_H__ */
