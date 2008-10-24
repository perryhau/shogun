/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 1999-2008 Soeren Sonnenburg
 * Written (W) 1999-2008 Gunnar Raetsch
 * Copyright (C) 1999-2008 Fraunhofer Institute FIRST and Max-Planck-Society
 */

#ifndef __GUILABELS__H_
#define __GUILABELS__H_

#include "lib/config.h"

#ifndef HAVE_SWIG

#include "base/SGObject.h"
#include "features/Labels.h"

class CSGInterface;

class CGUILabels : public CSGObject
{
	public:
		CGUILabels(CSGInterface* interface);
		~CGUILabels();

		CLabels *get_train_labels() { return train_labels; }
		CLabels *get_test_labels() { return test_labels; }

		bool set_train_labels(CLabels* lab) { delete train_labels; train_labels=lab; return true;}
		bool set_test_labels(CLabels* lab) { delete test_labels; test_labels=lab; return true;}

		/** load labels from file */
		bool load(char* filename, char* target);
		bool save(char* param);

	protected:
		CSGInterface* ui;
		CLabels *train_labels;
		CLabels *test_labels;
};
#endif //HAVE_SWIG
#endif
