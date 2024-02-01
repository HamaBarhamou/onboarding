package com.company.onboarding.view.departement;

import com.company.onboarding.entity.Departement;

import com.company.onboarding.view.main.MainView;

import com.vaadin.flow.router.Route;
import io.jmix.flowui.view.*;

@Route(value = "departements/:id", layout = MainView.class)
@ViewController("Departement.detail")
@ViewDescriptor("departement-detail-view.xml")
@EditedEntityContainer("departementDc")
public class DepartementDetailView extends StandardDetailView<Departement> {
}