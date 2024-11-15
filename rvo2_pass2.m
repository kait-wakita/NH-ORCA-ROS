pyrun("import pyrvo2")
pyrun("import numpy as np")
pyrun("import math")
pyrun("from pyrvo2 import *")

m_sim = pyrun("sim=RVOSimulator()","sim")
setupScenario();
while(~reachedGoal()))
    setPreferredVelocities();
    pyrun("sim.step()")
    visualize()
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function setupScenario()
    pyrun("sim.SetTimeStep(0.25)")
    pyrun("sim.setAgentDefaults(15.0, 10, 10.0, 10.0, 5.0, 2.0,np.array([0,0]))")

    pyrun("sim.addAgent(np.array([-200,0]))")
    pyrun("sim.addAgent(np.array([ 200,0]))")
    
    pyrun("goals.append(np.array([ 200,0]))")
    pyrun("goals.append(np.array([-200,0]))")
end
