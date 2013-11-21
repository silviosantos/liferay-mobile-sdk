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

#import <Foundation/Foundation.h>
#import "BaseService.h"

/**
 * author Bruno Farache
 */
@interface MDRRuleGroupService_v62 : BaseService

- (NSDictionary *)addRuleGroupWithGroupId:(long)groupId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (NSDictionary *)copyRuleGroupWithRuleGroupId:(long)ruleGroupId groupId:(long)groupId serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;
- (void)deleteRuleGroupWithRuleGroupId:(long)ruleGroupId error:(NSError **)error;
- (NSDictionary *)fetchRuleGroupWithRuleGroupId:(long)ruleGroupId error:(NSError **)error;
- (NSDictionary *)getRuleGroupWithRuleGroupId:(long)ruleGroupId error:(NSError **)error;
- (NSDictionary *)updateRuleGroupWithRuleGroupId:(long)ruleGroupId nameMap:(NSDictionary *)nameMap descriptionMap:(NSDictionary *)descriptionMap serviceContext:(NSDictionary *)serviceContext error:(NSError **)error;

@end