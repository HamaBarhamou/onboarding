package com.company.onboarding.security;

import com.company.onboarding.entity.User;
import io.jmix.security.model.EntityAttributePolicyAction;
import io.jmix.security.model.EntityPolicyAction;
import io.jmix.security.role.annotation.EntityAttributePolicy;
import io.jmix.security.role.annotation.EntityPolicy;
import io.jmix.security.role.annotation.ResourceRole;
import io.jmix.securityflowui.role.annotation.MenuPolicy;
import io.jmix.securityflowui.role.annotation.ViewPolicy;

@ResourceRole(name = "User management", code = UserManagementRole.CODE, scope = "API")
public interface UserManagementRole {
    String CODE = "user-management";

    @MenuPolicy(menuIds = "User.list")
    @ViewPolicy(viewIds = {"User.list", "User.detail"})
    void screens();

    @EntityAttributePolicy(entityClass = User.class, attributes = "*", action = EntityAttributePolicyAction.MODIFY)
    @EntityPolicy(entityClass = User.class, actions = EntityPolicyAction.ALL)
    void user();
}