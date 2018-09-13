package SimulationProject
  model SteeringSystem
    Modelica.Mechanics.Rotational.Components.Inertia I_sw(J = 0.01) annotation(
      Placement(visible = true, transformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Spring K_sc(c = 1e9) annotation(
      Placement(visible = true, transformation(origin = {-40, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Spring K_t(c = 1e9) annotation(
      Placement(visible = true, transformation(origin = {-12, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.IdealGear i(ratio = 3) annotation(
      Placement(visible = true, transformation(origin = {14, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Inertia I_p(J = 0.01) annotation(
      Placement(visible = true, transformation(origin = {46, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper H_p(d = 100) annotation(
      Placement(visible = true, transformation(origin = {72, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.IdealGear i_1(ratio = 3) annotation(
      Placement(visible = true, transformation(origin = {62, -6}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.IdealGear i_2(ratio = 3) annotation(
      Placement(visible = true, transformation(origin = {60, -44}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.SpringDamper KP1(c = 1e9, d = 100) annotation(
      Placement(visible = true, transformation(origin = {2, -6}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.SpringDamper KP2(c = 1e9, d = 100) annotation(
      Placement(visible = true, transformation(origin = {4, -44}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Inertia I_kp1(J = 10) annotation(
      Placement(visible = true, transformation(origin = {-54, -6}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Inertia I_kp2(J = 10) annotation(
      Placement(visible = true, transformation(origin = {-50, -44}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Components.Damper H_sw(d = 100) annotation(
      Placement(visible = true, transformation(origin = {-64, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Position delta_sw(a(fixed = false, start = 0), w(fixed = false, start = 0))  annotation(
      Placement(visible = true, transformation(origin = {-116, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque T_r1 annotation(
      Placement(visible = true, transformation(origin = {-110, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque T_r2 annotation(
      Placement(visible = true, transformation(origin = {-112, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput delta_sw_input annotation(
      Placement(visible = true, transformation(origin = {-146, 70}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {-125, 67}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput T_r1_input annotation(
      Placement(visible = true, transformation(origin = {-148, -6}, extent = {{-14, -14}, {14, 14}}, rotation = 0), iconTransformation(origin = {-124, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput T_r2_input annotation(
      Placement(visible = true, transformation(origin = {-148, -44}, extent = {{-14, -14}, {14, 14}}, rotation = 0), iconTransformation(origin = {-123, -37}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput delta_kp annotation(
      Placement(visible = true, transformation(origin = {142, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {120, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque CF_kp1 annotation(
      Placement(visible = true, transformation(origin = {-42, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant CF_kp1_value(k = -0.05) annotation(
      Placement(visible = true, transformation(origin = {-76, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant CF_kp2_value(k = -0.05) annotation(
      Placement(visible = true, transformation(origin = {-76, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque CF_kp2 annotation(
      Placement(visible = true, transformation(origin = {-42, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant const(k = -0.05) annotation(
      Placement(visible = true, transformation(origin = {34, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Mechanics.Rotational.Sources.Torque CF_p annotation(
      Placement(visible = true, transformation(origin = {70, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(T_r2.flange, I_kp2.flange_b) annotation(
      Line(points = {{-102, -44}, {-60, -44}}));
    connect(KP2.flange_b, I_kp2.flange_a) annotation(
      Line(points = {{-6, -44}, {-40, -44}}));
    connect(CF_kp2.flange, I_kp2.flange_a) annotation(
      Line(points = {{-32, -82}, {-32, -44}, {-40, -44}}));
    connect(I_kp1.flange_a, KP1.flange_b) annotation(
      Line(points = {{-44, -6}, {-8, -6}}));
    connect(T_r1.flange, I_kp1.flange_b) annotation(
      Line(points = {{-100, -6}, {-64, -6}}));
    connect(CF_kp1.flange, I_kp1.flange_a) annotation(
      Line(points = {{-32, 32}, {-32, -6}, {-44, -6}}));
    connect(i_2.flange_a, H_p.flange_b) annotation(
      Line(points = {{70, -44}, {102, -44}, {102, 70}, {82, 70}, {82, 70}, {82, 70}}));
    connect(i_1.flange_a, H_p.flange_b) annotation(
      Line(points = {{72, -6}, {94, -6}, {94, 70}, {82, 70}, {82, 70}}));
    connect(CF_p.tau, const.y) annotation(
      Line(points = {{58, 36}, {44, 36}, {44, 36}, {46, 36}, {46, 36}}, color = {0, 0, 127}));
    connect(CF_p.flange, H_p.flange_b) annotation(
      Line(points = {{80, 36}, {82, 36}, {82, 70}, {82, 70}}));
    connect(CF_kp2_value.y, CF_kp2.tau) annotation(
      Line(points = {{-64, -82}, {-56, -82}, {-56, -82}, {-54, -82}}, color = {0, 0, 127}));
    connect(CF_kp1_value.y, CF_kp1.tau) annotation(
      Line(points = {{-64, 32}, {-54, 32}, {-54, 32}, {-54, 32}}, color = {0, 0, 127}));
    connect(T_r2.tau, T_r2_input) annotation(
      Line(points = {{-124, -44}, {-148, -44}}, color = {0, 0, 127}));
    connect(T_r1.tau, T_r1_input) annotation(
      Line(points = {{-122, -6}, {-148, -6}}, color = {0, 0, 127}));
    connect(i_2.flange_b, KP2.flange_a) annotation(
      Line(points = {{50, -44}, {14, -44}}));
    connect(i_1.flange_b, KP1.flange_a) annotation(
      Line(points = {{52, -6}, {12, -6}}));
    connect(delta_sw_input, delta_sw.phi_ref) annotation(
      Line(points = {{-146, 70}, {-128, 70}}, color = {0, 0, 127}));
    connect(delta_sw.flange, I_sw.flange_a) annotation(
      Line(points = {{-106, 70}, {-100, 70}}));
    connect(H_sw.flange_b, K_sc.flange_a) annotation(
      Line(points = {{-54, 70}, {-52.5, 70}, {-52.5, 70}, {-51, 70}, {-51, 70}, {-48, 70}, {-48, 70}, {-48, 70}, {-48, 70}, {-49, 70}, {-49, 70}, {-50, 70}}));
    connect(I_sw.flange_b, H_sw.flange_a) annotation(
      Line(points = {{-80, 70}, {-74, 70}}));
    connect(I_p.flange_b, H_p.flange_a) annotation(
      Line(points = {{56, 70}, {62, 70}}));
    connect(i.flange_b, I_p.flange_a) annotation(
      Line(points = {{24, 70}, {27.5, 70}, {27.5, 70}, {31, 70}, {31, 70}, {38, 70}, {38, 70}, {38, 70}, {38, 70}, {37, 70}, {37, 70}, {36, 70}}));
    connect(K_t.flange_b, i.flange_a) annotation(
      Line(points = {{-2, 70}, {4, 70}}));
    connect(K_sc.flange_b, K_t.flange_a) annotation(
      Line(points = {{-30, 70}, {-28, 70}, {-28, 70}, {-26, 70}, {-26, 70}, {-22, 70}, {-22, 70}, {-22, 70}}));
    delta_kp = I_kp1.flange_b.phi;
    annotation(
      Diagram(coordinateSystem(extent = {{-140, -100}, {140, 100}})),
      Icon(coordinateSystem(extent = {{-140, -100}, {140, 100}}, initialScale = 0.1), graphics = {Text(origin = {0, 9}, extent = {{-94, 55}, {94, -55}}, textString = "Steering
System"), Rectangle(origin = {-1, 10}, lineThickness = 0.5, extent = {{-125, 76}, {119, -76}}), Text(origin = {-185, 37}, lineColor = {0, 0, 255}, extent = {{-25, 11}, {11, -9}}, textString = "T_r_1"), Text(origin = {-185, -11}, lineColor = {0, 0, 255}, extent = {{-25, 11}, {11, -5}}, textString = "T_r_2"), Text(origin = {191, 25}, lineColor = {0, 0, 255}, extent = {{-25, 11}, {15, -11}}, textString = "delta_kp")}),
      __OpenModelica_commandLineOptions = "");
  end SteeringSystem;

  model VehicleDynamics
    Modelica.Blocks.Interfaces.RealInput delta_kp annotation(
      Placement(visible = true, transformation(origin = {-108, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-101, 7}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput v annotation(
      Placement(visible = true, transformation(origin = {-2, 96}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {-2, 94}, extent = {{-12, -12}, {12, 12}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealOutput F_yf annotation(
      Placement(visible = true, transformation(origin = {104, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {104, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput F_yr annotation(
      Placement(visible = true, transformation(origin = {104, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {104, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    F_yf = 0;
    F_yr = 0;
    annotation(
      Icon(graphics = {Text(origin = {3, 19}, extent = {{-77, 57}, {77, -57}}, textString = "Vehicle
Dynamics"), Rectangle(origin = {0, 14}, lineThickness = 0.5, extent = {{-100, 80}, {100, -80}}), Text(origin = {136, 84}, lineColor = {0, 0, 255}, extent = {{-18, 6}, {18, -6}}, textString = "F_yf"), Text(origin = {136, -6}, lineColor = {0, 0, 255}, extent = {{-18, 6}, {18, -6}}, textString = "F_yr")}, coordinateSystem(initialScale = 0.1)));
  end VehicleDynamics;

  model TireModel
    Modelica.Blocks.Interfaces.RealInput F_yf annotation(
      Placement(visible = true, transformation(origin = {-106, 56}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-85, 53}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput F_yr annotation(
      Placement(visible = true, transformation(origin = {-110, -24}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-85, -31}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput F_yfi annotation(
      Placement(visible = true, transformation(origin = {104, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {84, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput M_yfi annotation(
      Placement(visible = true, transformation(origin = {104, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    F_yfi = 0;
    M_yfi = 0;
    annotation(
      Icon(graphics = {Rectangle(origin = {0, 10}, lineThickness = 0.5, extent = {{-86, 72}, {80, -72}}), Text(origin = {-20, 30}, extent = {{-70, 42}, {106, -74}}, textString = "Fiala
Tire
Model"), Text(origin = {132, 76}, lineColor = {0, 0, 255}, extent = {{-12, 6}, {12, -6}}, textString = "F_yfi"), Text(origin = {130, -4}, lineColor = {0, 0, 255}, extent = {{-12, 6}, {12, -6}}, textString = "M_yfi")}, coordinateSystem(initialScale = 0.1)));
  end TireModel;

  model AligningTorque
    Modelica.Blocks.Interfaces.RealInput F_yfi annotation(
      Placement(visible = true, transformation(origin = {106, 46}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {98, 60}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput M_a annotation(
      Placement(visible = true, transformation(origin = {106, -24}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {98, -44}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput delta_kp annotation(
      Placement(visible = true, transformation(origin = {-2, 94}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 92}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealOutput AT annotation(
      Placement(visible = true, transformation(origin = {-106, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {-106, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Product E_z annotation(
      Placement(visible = true, transformation(origin = {-26, 20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Constant E_kp(k = 0.05) annotation(
      Placement(visible = true, transformation(origin = {-78, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Product product1 annotation(
      Placement(visible = true, transformation(origin = {-32, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Constant F_z(k = 20000) annotation(
      Placement(visible = true, transformation(origin = {-56, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Sin sin1 annotation(
      Placement(visible = true, transformation(origin = {-2, 36}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Math.Product product2 annotation(
      Placement(visible = true, transformation(origin = {-18, -42}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Constant cos_delta_i(k = 0.85) annotation(
      Placement(visible = true, transformation(origin = {-46, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Product M_z annotation(
      Placement(visible = true, transformation(origin = {-36, -68}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Constant cos_delta_c_sin_delta_i(k = 0.008) annotation(
      Placement(visible = true, transformation(origin = {-64, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Abs abs1 annotation(
      Placement(visible = true, transformation(origin = {-2, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Sources.Constant E_y(k = 0.05) annotation(
      Placement(visible = true, transformation(origin = {54, 70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Product product3 annotation(
      Placement(visible = true, transformation(origin = {48, 26}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Product product4 annotation(
      Placement(visible = true, transformation(origin = {54, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add3 add31 annotation(
      Placement(visible = true, transformation(origin = {40, -66}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  equation
    connect(add31.y, AT) annotation(
      Line(points = {{40, -78}, {40, -78}, {40, -96}, {-88, -96}, {-88, 10}, {-106, 10}, {-106, 10}}, color = {0, 0, 127}));
    connect(M_a, add31.u3) annotation(
      Line(points = {{106, -24}, {64, -24}, {64, -44}, {48, -44}, {48, -54}, {48, -54}}, color = {0, 0, 127}));
    connect(product4.y, add31.u2) annotation(
      Line(points = {{54, -18}, {54, -18}, {54, -38}, {40, -38}, {40, -54}, {40, -54}}, color = {0, 0, 127}));
    connect(M_z.y, add31.u1) annotation(
      Line(points = {{-36, -78}, {-36, -78}, {-36, -86}, {18, -86}, {18, -48}, {32, -48}, {32, -52}, {32, -52}, {32, -54}}, color = {0, 0, 127}));
    connect(F_yfi, product4.u1) annotation(
      Line(points = {{106, 46}, {80, 46}, {80, 10}, {60, 10}, {60, 4}, {60, 4}}, color = {0, 0, 127}));
    connect(product3.y, product4.u2) annotation(
      Line(points = {{48, 16}, {48, 16}, {48, 4}, {48, 4}}, color = {0, 0, 127}));
    connect(product3.u2, cos_delta_i.y) annotation(
      Line(points = {{42, 38}, {26, 38}, {26, 62}, {-34, 62}, {-34, 62}}, color = {0, 0, 127}));
    connect(E_y.y, product3.u1) annotation(
      Line(points = {{54, 60}, {54, 38}}, color = {0, 0, 127}));
    connect(E_kp.y, E_z.u2) annotation(
      Line(points = {{-67, 40}, {-67, 40.5}, {-32, 40.5}, {-32, 32}}, color = {0, 0, 127}));
    connect(abs1.y, product2.u1) annotation(
      Line(points = {{-2, -20}, {-2, -20}, {-2, -24}, {-12, -24}, {-12, -30}, {-12, -30}}, color = {0, 0, 127}));
    connect(abs1.u, sin1.y) annotation(
      Line(points = {{-2, 4}, {-2, 4}, {-2, 26}, {-2, 26}}, color = {0, 0, 127}));
    connect(sin1.u, delta_kp) annotation(
      Line(points = {{-2, 48}, {-2, 94}}, color = {0, 0, 127}));
    connect(cos_delta_c_sin_delta_i.y, M_z.u2) annotation(
      Line(points = {{-53, -28}, {-48, -28}, {-48, -28}, {-41, -28}, {-41, -56}, {-41, -56}, {-41, -56}, {-43, -56}, {-43, -56}}, color = {0, 0, 127}));
    connect(M_z.u1, product2.y) annotation(
      Line(points = {{-30, -56}, {-24, -56}, {-24, -56}, {-18, -56}, {-18, -52}, {-18, -52}, {-18, -52}, {-18, -52}}, color = {0, 0, 127}));
    connect(product2.u2, product1.y) annotation(
      Line(points = {{-24, -30}, {-28, -30}, {-28, -30}, {-32, -30}, {-32, -20}, {-32, -20}, {-32, -20}, {-32, -20}}, color = {0, 0, 127}));
    connect(F_z.y, product1.u2) annotation(
      Line(points = {{-44, 18}, {-38, 18}, {-38, 2}}, color = {0, 0, 127}));
    connect(E_z.y, product1.u1) annotation(
      Line(points = {{-26, 8}, {-26, 2}}, color = {0, 0, 127}));
    connect(cos_delta_i.y, E_z.u1) annotation(
      Line(points = {{-34, 62}, {-20, 62}, {-20, 32}, {-20, 32}}, color = {0, 0, 127}));
    annotation(
      Icon(graphics = {Text(origin = {3, 10}, extent = {{-75, 50}, {75, -50}}, textString = "Aligning
Torque"), Rectangle(origin = {0, 8}, lineThickness = 0.5, extent = {{-100, 84}, {100, -84}}), Text(origin = {-134, 35}, lineColor = {0, 0, 255}, extent = {{-14, 15}, {14, -15}}, textString = "AT_i")}, coordinateSystem(initialScale = 0.1)),
      experiment(StartTime = 0, StopTime = 2, Tolerance = 1e-06, Interval = 0.004));
  end AligningTorque;

  model ResistantTorque
    Modelica.Blocks.Interfaces.RealInput AT annotation(
      Placement(visible = true, transformation(origin = {108, 10}, extent = {{20, -20}, {-20, 20}}, rotation = 0), iconTransformation(origin = {97, 5}, extent = {{11, -11}, {-11, 11}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput delta_kp annotation(
      Placement(visible = true, transformation(origin = {-2, 82}, extent = {{20, -20}, {-20, 20}}, rotation = 90), iconTransformation(origin = {1, 83}, extent = {{11, -11}, {-11, 11}}, rotation = 90)));
    Modelica.Blocks.Interfaces.RealInput delta_sw annotation(
      Placement(visible = true, transformation(origin = {0, -80}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {1, -77}, extent = {{-11, -11}, {11, 11}}, rotation = 90)));
    Modelica.Blocks.Interfaces.RealOutput T_r annotation(
      Placement(visible = true, transformation(origin = {-96, 6}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {-96, 6}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    parameter Real T_m_max = 5 "Maximum Tire-Road Friction Torque";
    parameter Real K_f = 2 "Equivalent Stiffness of Tires";
    Real T_m "Tire-Road Friction Torque";
    Real delta_kp_abs "Absolute Value of delta_kp";
  equation
    delta_kp_abs = if delta_kp >= 0 then delta_kp else -delta_kp;
    T_m = if K_f * delta_kp_abs <= T_m_max then K_f * delta_kp_abs else T_m_max;
    T_r = if delta_kp * der(delta_kp) >= 0 then T_m + AT else T_m - AT;
    annotation(
      Icon(graphics = {Text(origin = {-7, 16}, extent = {{-67, 44}, {93, -68}}, textString = "Resistant
Torque"), Rectangle(origin = {3, -3}, lineThickness = 0.5, extent = {{-97, 83}, {97, -71}}), Text(origin = {-143, 25}, lineColor = {0, 0, 255}, extent = {{-17, 7}, {17, -7}}, textString = "T_r_i")}, coordinateSystem(initialScale = 0.1)));
  end ResistantTorque;

  model ControlledSimulation
    SimulationProject.SteeringSystem steeringSystem1 annotation(
      Placement(visible = true, transformation(origin = {-82.8, 42}, extent = {{-28, -20}, {28, 20}}, rotation = 0)));
    SimulationProject.VehicleDynamics vehicleDynamics1 annotation(
      Placement(visible = true, transformation(origin = {-4, 44}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    SimulationProject.TireModel tireModel1 annotation(
      Placement(visible = true, transformation(origin = {64, 44}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    SimulationProject.AligningTorque aligningTorque1 annotation(
      Placement(visible = true, transformation(origin = {50, -32}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    SimulationProject.ResistantTorque resistantTorque1 annotation(
      Placement(visible = true, transformation(origin = {-56, -32}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Modelica.Blocks.Sources.Sine AngleInput(amplitude = 3.14, freqHz = 0.2, phase = 0) annotation(
      Placement(visible = true, transformation(origin = {-152, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant VehicleSpeed(k = 0) annotation(
      Placement(visible = true, transformation(origin = {-34, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(steeringSystem1.delta_sw_input, AngleInput.y) annotation(
      Line(points = {{-108, 55}, {-123, 55}, {-123, 56}, {-141, 56}}, color = {0, 0, 127}));
    connect(resistantTorque1.delta_sw, AngleInput.y) annotation(
      Line(points = {{-56, -47}, {-56, -68}, {-130, -68}, {-130, 56}, {-141, 56}}, color = {0, 0, 127}));
    connect(resistantTorque1.delta_kp, steeringSystem1.delta_kp) annotation(
      Line(points = {{-56, -14}, {-56, 14}, {-36, 14}, {-36, 45}, {-59, 45}}, color = {0, 0, 127}));
    connect(aligningTorque1.AT, resistantTorque1.AT) annotation(
      Line(points = {{34, -30}, {-34, -30}}, color = {0, 0, 127}));
    connect(resistantTorque1.T_r, steeringSystem1.T_r2_input) annotation(
      Line(points = {{-77, -31}, {-120, -31}, {-120, 35}, {-107, 35}}, color = {0, 0, 127}));
    connect(resistantTorque1.T_r, steeringSystem1.T_r1_input) annotation(
      Line(points = {{-77, -31}, {-120, -31}, {-120, 45}, {-108, 45}}, color = {0, 0, 127}));
    connect(aligningTorque1.delta_kp, steeringSystem1.delta_kp) annotation(
      Line(points = {{50, -16}, {50, 14}, {-36, 14}, {-36, 45}, {-59, 45}}, color = {0, 0, 127}));
    connect(steeringSystem1.delta_kp, vehicleDynamics1.delta_kp) annotation(
      Line(points = {{-59, 45}, {-22, 45}}, color = {0, 0, 127}));
    connect(tireModel1.F_yr, vehicleDynamics1.F_yr) annotation(
      Line(points = {{48, 38}, {15, 38}}, color = {0, 0, 127}));
    connect(vehicleDynamics1.F_yf, tireModel1.F_yf) annotation(
      Line(points = {{15, 54}, {46, 54}}, color = {0, 0, 127}));
    connect(VehicleSpeed.y, vehicleDynamics1.v) annotation(
      Line(points = {{-22, 82}, {-4, 82}, {-4, 61}}, color = {0, 0, 127}));
    connect(tireModel1.M_yfi, aligningTorque1.M_a) annotation(
      Line(points = {{80, 40}, {112, 40}, {112, -36}, {66, -36}, {66, -36}}, color = {0, 0, 127}));
    connect(tireModel1.F_yfi, aligningTorque1.F_yfi) annotation(
      Line(points = {{80, 54}, {102, 54}, {102, -24}, {66, -24}, {66, -24}}, color = {0, 0, 127}));
    annotation(
      Diagram(coordinateSystem(extent = {{-180, -100}, {180, 100}})),
      Icon(coordinateSystem(extent = {{-180, -100}, {180, 100}})),
      __OpenModelica_commandLineOptions = "",
      experiment(StartTime = 0, StopTime = 50, Tolerance = 0.0001, Interval = 0.02));
  end ControlledSimulation;

  model test
  equation

  end test;
  annotation(
    uses(Modelica(version = "3.2.2")));
end SimulationProject;
