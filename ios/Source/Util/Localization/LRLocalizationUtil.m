/**
 * Copyright (c) 2000-2014 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

#import "LRLocalizationUtil.h"
#import "LRSession.h"

static NSBundle *_bundle;

/**
 * @author Bruno Farache
 */
@implementation LRLocalizationUtil

+ (void)initialize {
	if (!_bundle) {
		_bundle = [NSBundle bundleForClass:[LRSession class]];

		NSString *path = [_bundle pathForResource:@"Liferay-iOS-SDK"
			ofType:@"bundle"];

		NSBundle *bundle = [NSBundle bundleWithPath:path];

		if (bundle) {
			_bundle = bundle;
		}
	}
}

+ (NSString *)localize:(NSString *)key {
	return [_bundle localizedStringForKey:key value:key table:nil];
}

@end