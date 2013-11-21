/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
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

#import "PortletService_v62.h"

/**
 * author Bruno Farache
 */
@implementation PortletService_v62

- (NSDictionary *)getWarPortlets:(NSError **)error {
	NSDictionary *_params = @{
	};

	NSDictionary *_command = @{@"/portlet/get-war-portlets": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSDictionary *)updatePortletWithCompanyId:(long)companyId portletId:(NSString *)portletId roles:(NSString *)roles active:(BOOL)active error:(NSError **)error {
	NSDictionary *_params = @{
		@"companyId": @(companyId),
		@"portletId": portletId,
		@"roles": roles,
		@"active": @(active)
	};

	NSDictionary *_command = @{@"/portlet/update-portlet": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

@end