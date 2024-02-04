package com.company.onboarding.view.setp;

import com.company.onboarding.entity.Step;

import com.company.onboarding.view.main.MainView;

import com.vaadin.flow.router.Route;
import io.jmix.flowui.view.*;

@Route(value = "setps/:id", layout = MainView.class)
@ViewController("Step.detail")
@ViewDescriptor("setp-detail-view.xml")
@EditedEntityContainer("setpDc")
public class SetpDetailView extends StandardDetailView<Step> {
}