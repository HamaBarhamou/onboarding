package com.company.onboarding.security;

import com.company.onboarding.entity.Departement;
import com.company.onboarding.entity.User;
import io.jmix.security.role.annotation.JpqlRowLevelPolicy;
import io.jmix.security.role.annotation.RowLevelRole;

@RowLevelRole(name = "HR manager’s departments and users", code = HrManagerRlRole.CODE)
public interface HrManagerRlRole {
    String CODE = "hr-manager-rl";

    @JpqlRowLevelPolicy(entityClass = Departement.class, where = "{E}.hrManager.id = :current_user_id")
    void departement();

    @JpqlRowLevelPolicy(entityClass = User.class, where = "{E}.department.hrManager.id = :current_user_id")
    void user();
}