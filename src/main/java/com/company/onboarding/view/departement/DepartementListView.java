package com.company.onboarding.view.departement;

import com.company.onboarding.entity.Departement;

import com.company.onboarding.view.main.MainView;

import com.vaadin.flow.router.Route;
import io.jmix.flowui.view.*;

@Route(value = "departements", layout = MainView.class)
@ViewController("Departement.list")
@ViewDescriptor("departement-list-view.xml")
@LookupComponent("departementsDataGrid")
@DialogMode(width = "64em")
public class DepartementListView extends StandardListView<Departement> {
}