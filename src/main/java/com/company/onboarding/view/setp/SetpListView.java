package com.company.onboarding.view.setp;

import com.company.onboarding.entity.Step;

import com.company.onboarding.view.main.MainView;

import com.vaadin.flow.router.Route;
import io.jmix.flowui.view.*;

@Route(value = "setps", layout = MainView.class)
@ViewController("Step.list")
@ViewDescriptor("setp-list-view.xml")
@LookupComponent("setpsDataGrid")
@DialogMode(width = "64em")
public class SetpListView extends StandardListView<Step> {
}