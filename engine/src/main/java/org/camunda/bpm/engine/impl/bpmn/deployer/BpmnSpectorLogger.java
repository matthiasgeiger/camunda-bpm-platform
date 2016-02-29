package org.camunda.bpm.engine.impl.bpmn.deployer;

import api.ValidationException;
import org.camunda.bpm.engine.impl.ProcessEngineLogger;

public class BpmnSpectorLogger  extends ProcessEngineLogger {

    public void startingEvaluation(String resourceName) {
        logInfo("001", "BPMNspector: Starting evaluation of '{}'", resourceName);
    }

    public void finishedWithNoViolation(String resourceName) {
        logInfo("002", "BPMNspector: Finished evaluation of '{}'. No violations found.", resourceName);
    }

    public void logValidationException(ValidationException ex) {
        logError("003", "BPMNspector: Validation failed: {}", ex.getMessage());
    }
}
