classdef LCOI_CrystalAnalysis_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        ReadyLabel                      matlab.ui.control.Label
        ReadyLamp                       matlab.ui.control.Lamp
        ImagetosaveDropDown             matlab.ui.control.DropDown
        ImagetosaveDropDownLabel        matlab.ui.control.Label
        SaveimageButton                 matlab.ui.control.Button
        LoadProjectButton               matlab.ui.control.Button
        SaveProjectButton               matlab.ui.control.Button
        TabGroup                        matlab.ui.container.TabGroup
        MainTab                         matlab.ui.container.Tab
        BackgroundcolorPanel            matlab.ui.container.Panel
        ChangeButton                    matlab.ui.control.StateButton
        BackgroundcolorDropDown         matlab.ui.control.DropDown
        MeasuredistancePanel            matlab.ui.container.Panel
        ClearButton                     matlab.ui.control.Button
        PickpointsinmiddleimageButton   matlab.ui.control.Button
        DistanceEditField               matlab.ui.control.NumericEditField
        DistanceEditFieldLabel          matlab.ui.control.Label
        SegmentcrystalPanel             matlab.ui.container.Panel
        HolefillingfactorEditField      matlab.ui.control.NumericEditField
        HolefillingfactorLabel          matlab.ui.control.Label
        KeepsegmentedButton             matlab.ui.control.Button
        RemovesegmentedButton           matlab.ui.control.Button
        SegmentButton                   matlab.ui.control.Button
        LoadNewImageButton              matlab.ui.control.Button
        LayersPanel                     matlab.ui.container.Panel
        TriangularorientationsCheckBox  matlab.ui.control.CheckBox
        TriangularboundaryCheckBox      matlab.ui.control.CheckBox
        RectangularorientationsCheckBox  matlab.ui.control.CheckBox
        RectangularboundaryCheckBox     matlab.ui.control.CheckBox
        HexagonalorientationsCheckBox   matlab.ui.control.CheckBox
        HexagonalboundaryCheckBox       matlab.ui.control.CheckBox
        ParticlescentersCheckBox_2      matlab.ui.control.CheckBox
        ParticlesedgesCheckBox          matlab.ui.control.CheckBox
        UpdatelayerssButton             matlab.ui.control.Button
        ParticleidentificationPanel     matlab.ui.container.Panel
        LoadcentersfromfileButton       matlab.ui.control.Button
        GranularityEditField            matlab.ui.control.NumericEditField
        GranularityEditFieldLabel       matlab.ui.control.Label
        ManualmaxEditField              matlab.ui.control.NumericEditField
        ManualmaxEditFieldLabel         matlab.ui.control.Label
        ThresholdDropDown               matlab.ui.control.DropDown
        ThresholdDropDownLabel          matlab.ui.control.Label
        Switch_7                        matlab.ui.control.Switch
        MindistancemeanradiusEditField  matlab.ui.control.NumericEditField
        MindistancemeanradiusEditFieldLabel  matlab.ui.control.Label
        CentersoptimizationButton       matlab.ui.control.Button
        AutoparametersButton            matlab.ui.control.Button
        ManualinitialEditField          matlab.ui.control.NumericEditField
        ManualinitialEditFieldLabel     matlab.ui.control.Label
        Switch_4                        matlab.ui.control.RockerSwitch
        FindCentersButton               matlab.ui.control.Button
        SensitivityEditField            matlab.ui.control.NumericEditField
        SensitivityEditFieldLabel       matlab.ui.control.Label
        MaxradiusEditField              matlab.ui.control.NumericEditField
        MaxradiusEditFieldLabel         matlab.ui.control.Label
        MinradiusEditField              matlab.ui.control.NumericEditField
        MinradiusEditFieldLabel         matlab.ui.control.Label
        CropimagePanel                  matlab.ui.container.Panel
        CropButton                      matlab.ui.control.Button
        XHighEditField                  matlab.ui.control.NumericEditField
        XHighEditFieldLabel             matlab.ui.control.Label
        YHighEditField                  matlab.ui.control.NumericEditField
        YHighEditFieldLabel             matlab.ui.control.Label
        YLowEditField                   matlab.ui.control.NumericEditField
        YLowEditFieldLabel              matlab.ui.control.Label
        XLowEditField                   matlab.ui.control.NumericEditField
        XLowEditFieldLabel              matlab.ui.control.Label
        EnhancecontrastPanel            matlab.ui.container.Panel
        DeblurringButton                matlab.ui.control.Button
        ResetButton                     matlab.ui.control.Button
        AdaptHistEqButton               matlab.ui.control.Button
        HistEqButton                    matlab.ui.control.Button
        ImAdjustButton                  matlab.ui.control.Button
        UIAxes_3                        matlab.ui.control.UIAxes
        UIAxes_2                        matlab.ui.control.UIAxes
        UIAxes                          matlab.ui.control.UIAxes
        MaskcreationfittingTab          matlab.ui.container.Tab
        TabGroup2                       matlab.ui.container.TabGroup
        HexagonalTab                    matlab.ui.container.Tab
        ParticlescentersCheckBox_4      matlab.ui.control.CheckBox
        HexagonalmaskscentersCheckBox   matlab.ui.control.CheckBox
        PlotoverlayhexagonalButton      matlab.ui.control.Button
        SymmetryhexagonSwitch           matlab.ui.control.Switch
        SymmetryhexagonSwitchLabel      matlab.ui.control.Label
        ParallelcomputationSwitch_2     matlab.ui.control.Switch
        ParallelcomputationSwitch_2Label  matlab.ui.control.Label
        ScreeningfactorshexagonalPanel  matlab.ui.container.Panel
        SortButton                      matlab.ui.control.Button
        FractionhexagonalEditField      matlab.ui.control.NumericEditField
        FractionhexagonalEditFieldLabel  matlab.ui.control.Label
        MultiplicativehexagonalEditField  matlab.ui.control.NumericEditField
        MultiplicativehexagonalEditFieldLabel  matlab.ui.control.Label
        NumberofcolorsincolormapHexagonalEditField  matlab.ui.control.NumericEditField
        NumberofcolorsincolormapHexagonalEditFieldLabel  matlab.ui.control.Label
        OptimizemaskhexagonButton       matlab.ui.control.Button
        IdentifyorientationshexagonButton  matlab.ui.control.Button
        CreatemaskhexagonButton         matlab.ui.control.Button
        PickparticlesformaskhexagonButton  matlab.ui.control.Button
        RectangularTab                  matlab.ui.container.Tab
        ParticlescentersCheckBox_5      matlab.ui.control.CheckBox
        RectangularmaskscentersCheckBox  matlab.ui.control.CheckBox
        PlotoverlayrectangularButton    matlab.ui.control.Button
        ParallelcomputationSwitch       matlab.ui.control.Switch
        ParallelcomputationSwitchLabel  matlab.ui.control.Label
        ScreeningfactorsrectangularPanel  matlab.ui.container.Panel
        SortrectangularButton           matlab.ui.control.Button
        FractionrectangularEditField    matlab.ui.control.NumericEditField
        FractionrectangularEditFieldLabel  matlab.ui.control.Label
        MultiplicativerectangularEditField  matlab.ui.control.NumericEditField
        MultiplicativerectangularEditFieldLabel  matlab.ui.control.Label
        NumberofcolorsincolormaprectangleEditField  matlab.ui.control.NumericEditField
        NumberofcolorsincolormaprectangleEditFieldLabel  matlab.ui.control.Label
        OptimizemaskrectangleButton     matlab.ui.control.Button
        SymmetryrectangleSwitch         matlab.ui.control.Switch
        SymmetryrectangleSwitchLabel    matlab.ui.control.Label
        IdentifyorientationsrectangleButton  matlab.ui.control.Button
        CreatemaskrectangleButton       matlab.ui.control.Button
        PickparticlesformaskrectangleButton  matlab.ui.control.Button
        TriangularTab                   matlab.ui.container.Tab
        ParticlescentersCheckBox_6      matlab.ui.control.CheckBox
        TriangularmaskscentersCheckBox  matlab.ui.control.CheckBox
        PlotoverlaytriangularButton     matlab.ui.control.Button
        ParallelcomputationSwitch_3     matlab.ui.control.Switch
        ParallelcomputationSwitch_3Label  matlab.ui.control.Label
        ScreeningfactorstriangularPanel  matlab.ui.container.Panel
        SorttriangularButton            matlab.ui.control.Button
        FractiontriangularEditField     matlab.ui.control.NumericEditField
        FractiontriangularEditFieldLabel  matlab.ui.control.Label
        MultiplicativetriangularEditField  matlab.ui.control.NumericEditField
        MultiplicativetriangularEditFieldLabel  matlab.ui.control.Label
        NumberofcolorsincolormaptriangularEditField  matlab.ui.control.NumericEditField
        NumberofcolorsincolormaptriangularEditFieldLabel  matlab.ui.control.Label
        OptimizemasktriangularButton    matlab.ui.control.Button
        IdentifyorientationstriangularButton  matlab.ui.control.Button
        CreatemasktriangularButton      matlab.ui.control.Button
        PickparticlesformasktriangularButton  matlab.ui.control.Button
        ZoomoutButton                   matlab.ui.control.Button
        ZoominButton                    matlab.ui.control.Button
        PickdomainButton                matlab.ui.control.Button
        PlotformaskcreationButton       matlab.ui.control.Button
        InstructionsTextArea            matlab.ui.control.TextArea
        InstructionsTextAreaLabel       matlab.ui.control.Label
        UIAxes2                         matlab.ui.control.UIAxes
        AdjustcontrastdeleteparticlesTab  matlab.ui.container.Tab
        WorkinpanelsPanel               matlab.ui.container.Panel
        SaveoutcomeButton               matlab.ui.control.Button
        AdaptHistEqinpanelsButton       matlab.ui.control.Button
        ShowdivisionButton              matlab.ui.control.Button
        SizeofpanelinpixelsEditField    matlab.ui.control.NumericEditField
        SizeofpanelinpixelsEditFieldLabel  matlab.ui.control.Label
        CorrectcontrastindomainPanel    matlab.ui.container.Panel
        SaveadjustedimageButton         matlab.ui.control.Button
        AdaptHistEqindomainButton       matlab.ui.control.Button
        HistEqindomainButton            matlab.ui.control.Button
        ImAdjustindomainButton          matlab.ui.control.Button
        MarkDomainButton                matlab.ui.control.Button
        DeletecentersPanel              matlab.ui.container.Panel
        DeleteparticleButton            matlab.ui.control.Button
        ChooseparticleButton            matlab.ui.control.Button
        PlotforcorrectionButton         matlab.ui.control.Button
        ShowcentersCheckBox             matlab.ui.control.CheckBox
        UIAxes2_2                       matlab.ui.control.UIAxes
        AnalyzedirectionsTab            matlab.ui.container.Tab
        PickadjustedcolormapPanel       matlab.ui.container.Panel
        Angle2toEditField               matlab.ui.control.NumericEditField
        Angle2toEditFieldLabel          matlab.ui.control.Label
        Angle1fromEditField             matlab.ui.control.NumericEditField
        Angle1fromEditFieldLabel        matlab.ui.control.Label
        PlotButton_4                    matlab.ui.control.Button
        ChoosemaskstypeButtonGroup      matlab.ui.container.ButtonGroup
        TriangularButton                matlab.ui.control.RadioButton
        RectangularButton               matlab.ui.control.RadioButton
        HexagonalButton                 matlab.ui.control.RadioButton
        ClusteranglesPanel              matlab.ui.container.Panel
        PlotadjustedtoclustersButton    matlab.ui.control.Button
        NumberofclustersinregionEditField  matlab.ui.control.NumericEditField
        NumberofclustersinregionEditFieldLabel  matlab.ui.control.Label
        MeasureangleatregionPanel       matlab.ui.container.Panel
        ClearregionButton               matlab.ui.control.Button
        MeanangleinregionTextArea       matlab.ui.control.TextArea
        MeanangleinregionTextAreaLabel  matlab.ui.control.Label
        CreateregionButton              matlab.ui.control.Button
        AddpointtoregionButton          matlab.ui.control.Button
        PlotwithdirectionsButton        matlab.ui.control.Button
        UIAxes2_3                       matlab.ui.control.UIAxes
        TessellationstrainshexagonalTab  matlab.ui.container.Tab
        TabGroup3                       matlab.ui.container.TabGroup
        TessellateforparticleheightTab  matlab.ui.container.Tab
        FlipchosenButton                matlab.ui.control.Button
        AssigndirectionschosenButton    matlab.ui.control.Button
        ChoosemaskButton                matlab.ui.control.Button
        StartfromchosenhullLabel        matlab.ui.control.Label
        StartfromhulloflowestenergyLabel  matlab.ui.control.Label
        FlipallButton                   matlab.ui.control.Button
        AssigndirectionsclusterwithminimalenergyButton  matlab.ui.control.Button
        StrainsTab                      matlab.ui.container.Tab
        ColorbarscaleSwitch             matlab.ui.control.Switch
        ColorbarscaleSwitchLabel        matlab.ui.control.Label
        ManualvaluefordeviationsEditField  matlab.ui.control.NumericEditField
        ManualvaluefordeviationsEditFieldLabel  matlab.ui.control.Label
        DeviationsfromSwitch            matlab.ui.control.Switch
        DeviationsfromSwitchLabel       matlab.ui.control.Label
        MeanedgeTextArea                matlab.ui.control.TextArea
        MeanedgeLabel                   matlab.ui.control.Label
        StandarddeviationskeptfrommeanEditField_2  matlab.ui.control.NumericEditField
        StandarddeviationskeptfrommeanEditField_2Label  matlab.ui.control.Label
        OutliersscreeningLabel_2        matlab.ui.control.Label
        PlotdeviationsButton            matlab.ui.control.Button
        Switch_5                        matlab.ui.control.Switch
        RangeofcolorbarfordeviationsLabel_2  matlab.ui.control.Label
        AssociateparticleswithmasksPanel  matlab.ui.container.Panel
        PlotassociationofparticleswithmaskscentersButton  matlab.ui.control.Button
        PlotButton                      matlab.ui.control.Button
        MaskscentersCheckBox            matlab.ui.control.CheckBox
        ParticlesCheckBox               matlab.ui.control.CheckBox
        UIAxes2_4                       matlab.ui.control.UIAxes
        StrainsrectangulartriangularTab  matlab.ui.container.Tab
        TabGroup4                       matlab.ui.container.TabGroup
        StrainsrectangularTab           matlab.ui.container.Tab
        ColorbarscaleSwitch_2           matlab.ui.control.Switch
        ColorbarscaleSwitch_2Label      matlab.ui.control.Label
        ManualvaluefordeviationsshortEditField  matlab.ui.control.NumericEditField
        ManualvaluefordeviationsshortEditFieldLabel  matlab.ui.control.Label
        ManualvaluefordeviationslongEditField  matlab.ui.control.NumericEditField
        ManualvaluefordeviationslongEditFieldLabel  matlab.ui.control.Label
        DeviationsfromSwitch_2          matlab.ui.control.Switch
        DeviationsfromSwitchLabel_2     matlab.ui.control.Label
        StandarddeviationskeptfrommeanEditField  matlab.ui.control.NumericEditField
        StandarddeviationskeptfrommeanEditFieldLabel  matlab.ui.control.Label
        MeanlengthsTextArea             matlab.ui.control.TextArea
        MeanlengthsTextAreaLabel        matlab.ui.control.Label
        OutliersscreeningLabel          matlab.ui.control.Label
        PlotdeviationsfrommeansButton   matlab.ui.control.Button
        Switch_2                        matlab.ui.control.Switch
        RangeofcolorbarfordeviationsLabel  matlab.ui.control.Label
        ShortedgesdeviationsfrommeanCheckBox  matlab.ui.control.CheckBox
        LongedgesdeviationsfrommeanCheckBox  matlab.ui.control.CheckBox
        PlotassociationofparticleswithmaskscentersButton_2  matlab.ui.control.Button
        PlotButton_2                    matlab.ui.control.Button
        MaskscentersrectangularCheckBox  matlab.ui.control.CheckBox
        ParticlescentersCheckBox        matlab.ui.control.CheckBox
        StrainstriangularTab            matlab.ui.container.Tab
        ColorbarscaleSwitch_3           matlab.ui.control.Switch
        ColorbarscaleSwitch_3Label      matlab.ui.control.Label
        ManualvaluefordeviationsEditField_2  matlab.ui.control.NumericEditField
        ManualvaluefordeviationsEditField_2Label  matlab.ui.control.Label
        DeviationsfromSwitch_3          matlab.ui.control.Switch
        DeviationsfromSwitchLabel_3     matlab.ui.control.Label
        PlotButton_3                    matlab.ui.control.Button
        StandarddeviationskeptfrommeanEditField_3  matlab.ui.control.NumericEditField
        StandarddeviationskeptfrommeanEditField_3Label  matlab.ui.control.Label
        MeanlengthsTextArea_2           matlab.ui.control.TextArea
        MeanlengthsTextArea_2Label      matlab.ui.control.Label
        OutliersscreeningLabel_3        matlab.ui.control.Label
        PlotdeviationsfrommeansButton_3  matlab.ui.control.Button
        Switch_6                        matlab.ui.control.Switch
        RangeofcolorbarfordeviationsLabel_3  matlab.ui.control.Label
        PlotassociationofparticleswithmaskscentersButton_3  matlab.ui.control.Button
        MaskscentersTriangularCheckBox  matlab.ui.control.CheckBox
        ParticlescentersCheckBox_3      matlab.ui.control.CheckBox
        UIAxes2_5                       matlab.ui.control.UIAxes
        ExportingTab                    matlab.ui.container.Tab
        ExportButton                    matlab.ui.control.Button
        VariablesPanel                  matlab.ui.container.Panel
        CrystalsegmentationmaskCheckBox  matlab.ui.control.CheckBox
        ParticlesindicesassociatedwithmaskshexagonalCheckBox  matlab.ui.control.CheckBox
        ParticlesindicesassociatedwithmasksrectangularCheckBox  matlab.ui.control.CheckBox
        ParticlesindicesassociatedwithmaskstriangularCheckBox  matlab.ui.control.CheckBox
        MaskparameteshexagonalCheckBox  matlab.ui.control.CheckBox
        MaskparametesrectangularCheckBox  matlab.ui.control.CheckBox
        MaskparametestriangularCheckBox  matlab.ui.control.CheckBox
        DetectedmaskscoordinatesandmetricsortedhexagonalCheckBox  matlab.ui.control.CheckBox
        DetectedmaskscoordinatesandmetricsortedrectangularCheckBox  matlab.ui.control.CheckBox
        DetectedmaskscoordinatesandmetricsortedtriangularCheckBox  matlab.ui.control.CheckBox
        DetectedparticlescentersradiiandmetricCheckBox  matlab.ui.control.CheckBox
        ProcessedimageCheckBox          matlab.ui.control.CheckBox
        UnprocessedcroppedimageCheckBox  matlab.ui.control.CheckBox
    end

    
    properties (Access = private)
        imageOri % The image cropped but not proccessed.
        imageP % The proccessed image (cropped, segmented and contrast correction).
        xHigh % Number of pixels in the x dimension in imageP. 
        yHigh % Number of pixels in the y dimension in imageP.
        domain % Masked domain obtained in crystal segmentation.
        segmentationMask % Mask of segmented backgraound.
        centers % Detected centers of the particles.
        radii % Detected radii of the particles.
        minRadOver=1.4 % Minimal distance (measured in mean radius) between distinct particles.
        particlesFindingMethod=['TwoStage']; % Method for Hough transform. Can be two-stage or phase coding.
        particlesMetric % Metric of particle centers from imfindcircles. 
        indicesTopLeftMasks % Index of top-left pixel picked for zoom-in in the mask creation & fitting tab.
        indicesBottomRightMasks % Index of bottom-right pixel picked for zoom-in in the mask creation & fitting tab.
        hullTempHexa % Temporary coordinates for hull creation - hexagonal.
        hullHexa % The three parameters of the hull - hexagonal.
        coorOfMasksHexa % Coordinates of found hexagonal hulls (location and angle) as [xCent,yCent,angle] sorted.
        coorOfMasksHexaNotSorted % Coordinates of found hexagonal hulls (location and angle) as [xCent,yCent,angle] NOT sorted.
        eOfMasksHexa % Energy per sorted hulls hexagonal.
        eofNotSortedMasksHexa % Energy per non-sorted hulls - hexagonal.
        indPerCentHexaNotSorted % Indices of particles associated with each center not sorted - hexagonal.
        indPerCentHexa % Indices of particles associated with each mask's center - hexagonal.
        hullTempRect % Temp coordinates for hull creation - rectangular.
        hullRect % The two parameters of the hull - rectangular.
        coorOfMasksRectNotSorted % Coordinates of found rectangular masks (location and angle) as [xCent,yCent,angle] NOT sorted.
        eofNotSortedMasksRect % Energy per non-sorted masks rectangular.
        coorOfMasksRect % Coordinates of found rectangular masks (location and angle) as [xCent,yCent,angle] sorted.
        eOfMasksRect % Energy per sorted masks - rectangular.
        indPerCentRectNotSorted % Indices of particles associated with each center not sorted - rectangular.
        indPerCentRect % Indices of particles associated with each mask's center - Rectangular.        
        hullTempTri % Temp coordinates for hull creation - triangular.
        hullTri % The parameter of the hull - triangular.
        coorOfMasksTriNotSorted % Coordinates of found triangular masks (location and angle) as [xCent,yCent,angle] NOT sorted.
        eofNotSortedMasksTri % Energy per non-sorted masks triangular.
        coorOfMasksTri % Coordinates of found triangular masks (location and angle) as [xCent,yCent,angle] sorted.
        eOfMasksTri % Energy per sorted masks triangular.
        indPerCentTriNotSorted % Indices of particles associated with each center not sorted - triangular.
        indPerCentTri % Indices of particles associated with each mask's center - triangular
        centerMarked % Marked particle's ceneter for deleting.
        indicesTopLeft % Indices of top-left pixel in the user-marked domain for contrast adjustment.
        indicesBottomRight % Indices of bottom-right pixel in the user-marked domain for contrast adjustment.
        imagePTemp % Proccessed image in adjust per domain - Not saved.        
        region % User-marked region for mean angle measurement in the analyze directions tab.
        angMin % Minimal angle for directions colormap.
        angMax % Maximal angle for directions colormap.
        directions % Directions of 2-fold hexagonal masks in the tessellation tab.
        indChosenMask % Index of chosen mask for directions actions.
    end
    
    methods (Access = private)
        
        function  hu = createHullHexa(app,points)
            % Converting a set of 6 point to 3 parameters of the hexagonal
            % hull. Considering an upright hexagon (vertex at the top and long axis, if it is not symmetric, upright), 
            % "a" is the length of the vertical edges, "b" is the width of the hexagon and
            % "c" is the distance of the top and bottom vertices from the inner rectangle.
            
            % The input is:
            % points - The coordinates of 6 vertices. 
            % The output is:
            % hu - The hull's parameters as [a,b,c]

            if app.SymmetryhexagonSwitch.Value=='2'
                distRect_1_1=norm(points(2,:)-points(3,:));
                distRect_1_2=norm(points(5,:)-points(6,:));
                a=(distRect_1_1+distRect_1_2)/2;
                distRect_2_1=norm(points(2,:)-points(6,:));
                distRect_2_2=norm(points(5,:)-points(3,:));
                b=(distRect_2_1+distRect_2_2)/2;   
                v1 = points(2,:) - points(6,:);
                v2= points(1,:) - points(2,:);
                d1 = norm(cross([v1,0],[v2,0])) / norm(v1);
                v1 = points(3,:) - points(5,:);
                v2= points(4,:) - points(3,:);
                d2 = norm(cross([v1,0],[v2,0])) / norm(v1);
                c=(d1+d2)/2;
                hu=[a,b,c];
            elseif app.SymmetryhexagonSwitch.Value=='6'
                meanP=mean(points,1);
                a=(norm(points(1,:)-meanP)+norm(points(2,:)-meanP)+norm(points(3,:)-meanP)+norm(points(4,:)-meanP)+norm(points(5,:)-meanP)+norm(points(6,:)-meanP))/6;
                b=sqrt(3)*a;
                c=a/2;
                hu=[a,b,c];
            end
        end
        
        function coorHexa = convertToHexa(~,hu,cent,rot)
            % Returning the 6 vertices of an hexagon according to the input.

            % The input is:
            % hu - The hexagonal hull.
            % cent - The desired center of the hexagon as (x,y).
            % rot - The rotation angle of the long axis of the hexagon.
            % The output is:
            % coorHexa - The corrdinates of the 6 vertices of the shifted
            % and rotated hexagon.

            coorHexa=[-(hu(1)/2+hu(3)),0;-(hu(1)/2),hu(2)/2;(hu(1)/2),hu(2)/2;(hu(1)/2+hu(3)),0;(hu(1)/2),-hu(2)/2;-(hu(1)/2),-hu(2)/2];
            M = [cos(rot) -sin(rot); sin(rot) cos(rot)];
            coorHexa=(M*coorHexa')';
            coorHexa=coorHexa+cent;
        end
        
        function e = enerHullHexa(app,coor,cutoff,cent,hu)
            % Returning the energy of an hexagon specified by "coor" and the
            % hexagonal hull. The model is masses and springs where distance is
            % measured from all found particle centers. All distances larger
            % than "cutoff" have no contribution and there is a shift of
            % energy for active springs in order for them to be
            % energetically favorable.

            % The input is:
            % coor - The coordinates of the hexagon's center and it's
            % rotation angle as (x,y,angle).
            % cutoff - The cutoff distance for connected springs.
            % cent - The (x,y) locations of the detected particles.
            % hu - The hexagonal hull.
            % The output is:
            % e - The computed energy.

            coorHull = convertToHexa(app,hu,coor(1:2),coor(3));
            shift=-cutoff^2;
            centXRep=repmat(cent(:,1),1,6);
            hXReshape=reshape(coorHull(:,1),1,[]);
            centYRep=repmat(cent(:,2),1,6);
            hYReshape=reshape(coorHull(:,2),1,[]);
            dist=sqrt((hXReshape-centXRep).^2+(hYReshape-centYRep).^2);
            dist(dist>cutoff)=0;
            e=shift*sum(sum(dist>0));
            e=e+sum(sum(dist.^2));
        end
        
        function [indReturn] = keepUniqueMinHexa(app)
            % Screening the found hexagonal masks such that the distance between
            % found masks must be larger than 2/3 of the "b" parameter of the
            % hull (the "width" of the hexagon). The masks with the minimal energy are kept.

            % The output is:
            %indReturn - An array indicating if the mask is kept (1) or not (0).

            indReturn=zeros(1,size(app.coorOfMasksHexa,1));
            if size(app.coorOfMasksHexa,1)>1
                indChecked=zeros(length(app.coorOfMasksHexa),1);
                indReturn=zeros(length(app.coorOfMasksHexa),1);
                cut=app.hullHexa(2)*3/4;
                for i=1:length(app.coorOfMasksHexa)
                    if indChecked(i)==0
                        dist=app.coorOfMasksHexa(:,1:2)-app.coorOfMasksHexa(i,1:2);
                        dist=sqrt(dist(:,1).^2+dist(:,2).^2);
                        ind=dist<cut;
                        indChecked(ind)=1;
                        indC=find(ind==1);
                        indReturn(indC(1))=1;
                    end
                end
            end
        end
        
        function  plotDirectionColor(app,ax,typeP)
            % Plotting the masks' directions according to the specified type of hull
            % and the corresponding colormap with it's symmetry.

            % The input is:
            % ax - The axes where the masks' directions should be plotted.
            % typeP - The hull type where 1=hexagonal, 2=rectangular and
            % 3=triangular.

            if typeP==1 % Hexagonal
                if isempty(app.coorOfMasksHexa)==false
                    a=app.hullHexa(1)/2;
                    % Checking if the symmetry input from the user is 2-fold or 6-fold
                    v=app.SymmetryhexagonSwitch.Value;
                    v=convertCharsToStrings(v);
                    if v=='2'
                        % Plotting the directions of the unit-cells colorcoded
                        Cmap=zeros(256,4);
                        Cmap(:,1)=(1:256)/256*pi;
                        Cmap(:,2:4)=hsv;
                        col = interp1(Cmap(:,1),Cmap(:,2:4),app.coorOfMasksHexa(:,3));
                        for i=1:length(app.coorOfMasksHexa)
                            if isnan(col(i,:))==false
                                plot(ax,[app.coorOfMasksHexa(i,1)-cos(app.coorOfMasksHexa(i,3)).*a,app.coorOfMasksHexa(i,1)+cos(app.coorOfMasksHexa(i,3)).*a],[app.coorOfMasksHexa(i,2)-sin(app.coorOfMasksHexa(i,3)).*a,app.coorOfMasksHexa(i,2)+sin(app.coorOfMasksHexa(i,3)).*a],'Color',col(i,:),'LineWidth',1.5)
                            end
                        end
                        app.InstructionsTextArea.Value='Done.';
                        % Producing a colorbar wheel of the desired symmetry
                        n=app.NumberofcolorsincolormapHexagonalEditField.Value;
                        r=22*(n)/pi;
                        t=(0:n-1)/(n)*pi;
                        x=r*cos(t);
                        y=r*sin(t);
                        orient=atan2(y,x);
                        centersLeg=[x' -y'];
                        centersLeg2=[x' -y'];
                        M = [cos(pi) -sin(pi); sin(pi) cos(pi)];
                        centersLeg2=(M*centersLeg2')';
                        Cmap=zeros(256,4);
                        Cmap(:,1)=((0:255)/255)*pi;
                        Cmap(:,2:4)=hsv;
                        col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                        figure(50)
                        hold on
                        for i=1:n
                            points=centersLeg(i,:);
                            points2=centersLeg2(i,:);
                            rectangle('Position',[points,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                            rectangle('Position',[points2,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        end
                        axis equal
                    else
                        % Plotting the directions of the unit-cells colorcoded
                        Cmap(:,1)=(1:256)/256*pi/3;
                        Cmap(:,2:4)=hsv;
                        col = interp1(Cmap(:,1),Cmap(:,2:4),app.coorOfMasksHexa(:,3));
                        for i=1:length(app.coorOfMasksHexa)
                            if isnan(col(i,:))==false
                                plot(ax,[app.coorOfMasksHexa(i,1)-cos(app.coorOfMasksHexa(i,3)+pi/2).*a,app.coorOfMasksHexa(i,1)+cos(app.coorOfMasksHexa(i,3)+pi/2).*a],[app.coorOfMasksHexa(i,2)-sin(app.coorOfMasksHexa(i,3)+pi/2).*a,app.coorOfMasksHexa(i,2)+sin(app.coorOfMasksHexa(i,3)+pi/2).*a],'Color',col(i,:),'LineWidth',1.5)
                                plot(ax,[app.coorOfMasksHexa(i,1)-cos(app.coorOfMasksHexa(i,3)+pi/3+pi/2).*a,app.coorOfMasksHexa(i,1)+cos(app.coorOfMasksHexa(i,3)+pi/2+pi/3).*a],[app.coorOfMasksHexa(i,2)-sin(app.coorOfMasksHexa(i,3)+pi/2+pi/3).*a,app.coorOfMasksHexa(i,2)+sin(app.coorOfMasksHexa(i,3)+pi/2+pi/3).*a],'Color',col(i,:),'LineWidth',1.5)
                                plot(ax,[app.coorOfMasksHexa(i,1)-cos(app.coorOfMasksHexa(i,3)+2*pi/3+pi/2).*a,app.coorOfMasksHexa(i,1)+cos(app.coorOfMasksHexa(i,3)+pi/2+2*pi/3).*a],[app.coorOfMasksHexa(i,2)-sin(app.coorOfMasksHexa(i,3)+pi/2+2*pi/3).*a,app.coorOfMasksHexa(i,2)+sin(app.coorOfMasksHexa(i,3)+pi/2+2*pi/3).*a],'Color',col(i,:),'LineWidth',1.5)
                            end
                        end
                        app.InstructionsTextArea.Value='Done.';
                        % Producing a colorbar wheel of the desired symmetry
                        n=2*app.NumberofcolorsincolormapHexagonalEditField.Value;
                        r=22*(n)/(pi/3);
                        t=(0:n-1)/(n)*(pi/3);
                        x=r*cos(t);
                        y=r*sin(t);
                        orient=atan2(y,x);
                        centersLeg=[x' -y'];
                        M = [cos(pi/2) -sin(pi/2); sin(pi/2) cos(pi/2)];
                        centersLeg=(M*centersLeg')';
                        centersLeg2=[x' -y'];
                        M = [cos(pi/3+pi/2) -sin(pi/3+pi/2); sin(pi/3+pi/2) cos(pi/3+pi/2)];
                        centersLeg2=(M*centersLeg2')';
                        centersLeg3=[x' -y'];
                        M = [cos(2*pi/3+pi/2) -sin(2*pi/3+pi/2); sin(2*pi/3+pi/2) cos(2*pi/3+pi/2)];
                        centersLeg3=(M*centersLeg3')';
                        centersLeg4=[x' -y'];
                        M = [cos(pi+pi/2) -sin(pi+pi/2); sin(pi+pi/2) cos(pi+pi/2)];
                        centersLeg4=(M*centersLeg4')';
                        centersLeg5=[x' -y'];
                        M = [cos(4*pi/3+pi/2) -sin(4*pi/3+pi/2); sin(4*pi/3+pi/2) cos(4*pi/3+pi/2)];
                        centersLeg5=(M*centersLeg5')';
                        centersLeg6=[x' -y'];
                        M = [cos(5*pi/3+pi/2) -sin(5*pi/3+pi/2); sin(5*pi/3+pi/2) cos(5*pi/3+pi/2)];
                        centersLeg6=(M*centersLeg6')';
                        Cmap=zeros(256,4);
                        Cmap(:,1)=((0:255)/255)*pi/3;
                        Cmap(:,2:4)=hsv;
                        col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                        figure(50)
                        hold on
                        for i=1:n
                            points=centersLeg(i,:);
                            points2=centersLeg2(i,:);
                            points3=centersLeg3(i,:);
                            points4=centersLeg4(i,:);
                            points5=centersLeg5(i,:);
                            points6=centersLeg6(i,:);
                            rectangle('Position',[points,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                            rectangle('Position',[points2,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                            rectangle('Position',[points3,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                            rectangle('Position',[points4,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                            rectangle('Position',[points5,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                            rectangle('Position',[points6,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        end
                        axis equal
                    end
                end              
            elseif typeP==2 % Rectangular  
                a=app.hullRect(1)/4;
                Cmap=zeros(256,4);
                % Checking if the symmetry input from the user is 2-fold or 4-fold
                v=app.SymmetryrectangleSwitch.Value;
                v=convertCharsToStrings(v);
                if v=='2'
                    % Plotting the directions of the unit-cells colorcoded
                    Cmap(:,1)=(1:256)/256*pi;
                    Cmap(:,2:4)=hsv;
                    col = interp1(Cmap(:,1),Cmap(:,2:4),app.coorOfMasksRect(:,3));
                    for i=1:size(app.coorOfMasksRect,1)
                        if isnan(col(i,:))==false
                            plot(ax,[app.coorOfMasksRect(i,1)-cos(app.coorOfMasksRect(i,3)).*a,app.coorOfMasksRect(i,1)+cos(app.coorOfMasksRect(i,3)).*a],[app.coorOfMasksRect(i,2)-sin(app.coorOfMasksRect(i,3)).*a,app.coorOfMasksRect(i,2)+sin(app.coorOfMasksRect(i,3)).*a],'Color',col(i,:),'LineWidth',1.5)
                        end
                    end
                    app.InstructionsTextArea.Value='Done.';
                    % Producing a colorbar wheel of the desired symmetry
                    n=app.NumberofcolorsincolormaprectangleEditField.Value;
                    r=22*(n)/pi;
                    t=(0:n-1)/(n)*pi;
                    x=r*cos(t);
                    y=r*sin(t);
                    orient=atan2(y,x);
                    centersLeg=[x' -y'];
                    centersLeg2=[x' -y'];
                    M = [cos(pi) -sin(pi); sin(pi) cos(pi)];
                    centersLeg2=(M*centersLeg2')';
                    Cmap=zeros(256,4);
                    Cmap(:,1)=((0:255)/255)*pi;
                    Cmap(:,2:4)=hsv;
                    col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                    figure(50)
                    hold on
                    for i=1:n
                        points=centersLeg(i,:);
                        points2=centersLeg2(i,:);
                        rectangle('Position',[points,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points2,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                    end
                    axis equal
                elseif v=='4'
                    % Plotting the directions of the unit-cells colorcoded
                    Cmap(:,1)=(1:256)/256*pi/2;
                    Cmap(:,2:4)=hsv;
                    col = interp1(Cmap(:,1),Cmap(:,2:4),app.coorOfMasksRect(:,3));
                    for i=1:length(app.coorOfMasksRect)
                        if isnan(col(i,:))==false
                            plot(ax,[app.coorOfMasksRect(i,1)-cos(app.coorOfMasksRect(i,3)).*a,app.coorOfMasksRect(i,1)+cos(app.coorOfMasksRect(i,3)).*a],[app.coorOfMasksRect(i,2)-sin(app.coorOfMasksRect(i,3)).*a,app.coorOfMasksRect(i,2)+sin(app.coorOfMasksRect(i,3)).*a],'Color',col(i,:),'LineWidth',1.5)
                            plot(ax,[app.coorOfMasksRect(i,1)-cos(app.coorOfMasksRect(i,3)+pi/2).*a,app.coorOfMasksRect(i,1)+cos(app.coorOfMasksRect(i,3)+pi/2).*a],[app.coorOfMasksRect(i,2)-sin(app.coorOfMasksRect(i,3)+pi/2).*a,app.coorOfMasksRect(i,2)+sin(app.coorOfMasksRect(i,3)+pi/2).*a],'Color',col(i,:),'LineWidth',1.5)
                        end
                    end
                    app.InstructionsTextArea.Value='Done.';
                    % Producing a colorbar wheel of the desired symmetry
                    n=app.NumberofcolorsincolormaprectangleEditField.Value;
                    r=22*(n)/(pi/2);
                    t=(0:n-1)/(n)*(pi/2);
                    x=r*cos(t);
                    y=r*sin(t);
                    orient=atan2(y,x);
                    centersLeg=[x' -y'];
                    centersLeg2=[x' -y'];
                    M = [cos(pi/2) -sin(pi/2); sin(pi/2) cos(pi/2)];
                    centersLeg2=(M*centersLeg2')';
                    centersLeg3=[x' -y'];
                    M = [cos(pi) -sin(pi); sin(pi) cos(pi)];
                    centersLeg3=(M*centersLeg3')';
                    centersLeg4=[x' -y'];
                    M = [cos(3*pi/2) -sin(3*pi/2); sin(3*pi/2) cos(3*pi/2)];
                    centersLeg4=(M*centersLeg4')';
                    Cmap=zeros(256,4);
                    Cmap(:,1)=((0:255)/255)*(pi/2);
                    Cmap(:,2:4)=hsv;
                    col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                    figure(50)
                    hold on
                    for i=1:n
                        points=centersLeg(i,:);
                        points2=centersLeg2(i,:);
                        points3=centersLeg3(i,:);
                        points4=centersLeg4(i,:);
                        rectangle('Position',[points,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points2,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points3,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points4,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                    end
                    axis equal
                end       
            elseif typeP==3 % Triangular
                if isempty(app.coorOfMasksTri)==false
                    a=app.hullTri(1);
                    a=sqrt(0.75).*a/3;
                    % Plotting the directions of the unit-cells colorcoded
                    Cmap=zeros(2*256,4);
                    Cmap(1:512,1)=(1:512)/512*(2*pi/3);
                    Cmap(1:256,2:4)=hsv;
                    Cmap(257:end,2:4)=hsv;
                    col = interp1(Cmap(:,1),Cmap(:,2:4),app.coorOfMasksTri(:,3));
                    for i=1:length(app.coorOfMasksTri)
                        if isnan(col(i,:))==false
                            plot(ax,[app.coorOfMasksTri(i,1)-cos(app.coorOfMasksTri(i,3)+pi/2).*a,app.coorOfMasksTri(i,1)+cos(app.coorOfMasksTri(i,3)+pi/2).*a],[app.coorOfMasksTri(i,2)-sin(app.coorOfMasksTri(i,3)+pi/2).*a,app.coorOfMasksTri(i,2)+sin(app.coorOfMasksTri(i,3)+pi/2).*a],'Color',col(i,:),'LineWidth',1.5)
                            plot(ax,[app.coorOfMasksTri(i,1)-cos(app.coorOfMasksTri(i,3)+2*pi/3+pi/2).*a,app.coorOfMasksTri(i,1)+cos(app.coorOfMasksTri(i,3)+pi/2+2*pi/3).*a],[app.coorOfMasksTri(i,2)-sin(app.coorOfMasksTri(i,3)+pi/2+2*pi/3).*a,app.coorOfMasksTri(i,2)+sin(app.coorOfMasksTri(i,3)+pi/2+2*pi/3).*a],'Color',col(i,:),'LineWidth',1.5)
                            plot(ax,[app.coorOfMasksTri(i,1)-cos(app.coorOfMasksTri(i,3)+4*pi/3+pi/2).*a,app.coorOfMasksTri(i,1)+cos(app.coorOfMasksTri(i,3)+pi/2+4*pi/3).*a],[app.coorOfMasksTri(i,2)-sin(app.coorOfMasksTri(i,3)+pi/2+4*pi/3).*a,app.coorOfMasksTri(i,2)+sin(app.coorOfMasksTri(i,3)+pi/2+4*pi/3).*a],'Color',col(i,:),'LineWidth',1.5)
                        end
                    end
                    app.InstructionsTextArea.Value='Done.';
                    % Producing a colorbar wheel of the desired symmetry
                    n=2*app.NumberofcolorsincolormaptriangularEditField.Value;
                    r=22*(n)/(pi/3);
                    t=(0:n-1)/(n)*(pi/3);
                    x=r*cos(t);
                    y=r*sin(t);
                    orient=atan2(y,x);
                    centersLeg=[x' -y'];
                    M = [cos(pi/2) -sin(pi/2); sin(pi/2) cos(pi/2)];
                    centersLeg=(M*centersLeg')';
                    centersLeg2=[x' -y'];
                    M = [cos(pi/3+pi/2) -sin(pi/3+pi/2); sin(pi/3+pi/2) cos(pi/3+pi/2)];
                    centersLeg2=(M*centersLeg2')';
                    centersLeg3=[x' -y'];
                    M = [cos(2*pi/3+pi/2) -sin(2*pi/3+pi/2); sin(2*pi/3+pi/2) cos(2*pi/3+pi/2)];
                    centersLeg3=(M*centersLeg3')';
                    centersLeg4=[x' -y'];
                    M = [cos(pi+pi/2) -sin(pi+pi/2); sin(pi+pi/2) cos(pi+pi/2)];
                    centersLeg4=(M*centersLeg4')';
                    centersLeg5=[x' -y'];
                    M = [cos(4*pi/3+pi/2) -sin(4*pi/3+pi/2); sin(4*pi/3+pi/2) cos(4*pi/3+pi/2)];
                    centersLeg5=(M*centersLeg5')';
                    centersLeg6=[x' -y'];
                    M = [cos(5*pi/3+pi/2) -sin(5*pi/3+pi/2); sin(5*pi/3+pi/2) cos(5*pi/3+pi/2)];
                    centersLeg6=(M*centersLeg6')';
                    Cmap=zeros(256,4);
                    Cmap(:,1)=((0:255)/255)*pi/3;
                    Cmap(:,2:4)=hsv;
                    col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                    figure(50)
                    hold on
                    for i=1:n
                        points=centersLeg(i,:);
                        points2=centersLeg2(i,:);
                        points3=centersLeg3(i,:);
                        points4=centersLeg4(i,:);
                        points5=centersLeg5(i,:);
                        points6=centersLeg6(i,:);
                        rectangle('Position',[points,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points2,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points3,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points4,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points5,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                        rectangle('Position',[points6,20,20],'Curvature',[1 1],'FaceColor',col(i,:));
                    end
                    axis equal
                end
            end
        end
        
        function hu = createHullRect(app,points)
            % Creating a rectangular hull with edges "[a,b]" from 4 "points".
            % If the symmetry switch is on "4", the square with mean edge
            % length is returned.

            % The input is:
            % points - The coordinates of 4 vertices.
            % The output is:
            % hu - The hull's parameters as [a,b] where a is the longer edge.

            distRect_1_1=norm(points(1,:)-points(2,:));
            distRect_1_2=norm(points(3,:)-points(4,:));
            a=(distRect_1_1+distRect_1_2)/2;
            distRect_2_1=norm(points(1,:)-points(4,:));
            distRect_2_2=norm(points(2,:)-points(3,:));
            b=(distRect_2_1+distRect_2_2)/2;
            hu=sort([a,b],'descend');
            if app.SymmetryrectangleSwitch.Value=='4'
                hu=[(a+b)/2,(a+b)/2];
            end
        end
        
        function coorRect=convertToRect(~,hu,cent,rot)
            % Returning the 4 vertices of a rectangle according to the input.

            % The input is:
            % hu - The recangular hull.
            % cent - The desired center of the rectangle as (x,y).
            % rot - The rotation angle of the long edge of the rectangle.
            % The output is:
            % coorRect - The corrdinates of the 4 vertices of the shifted
            % and rotated rectangle.

            coorRect=[-hu(1)/2,hu(2)/2;hu(1)/2,hu(2)/2;hu(1)/2,-hu(2)/2;-hu(1)/2,-hu(2)/2];
            M = [cos(rot) -sin(rot); sin(rot) cos(rot)];
            coorRect=(M*coorRect')';
            coorRect=coorRect+cent;
        end
        
        function e = enerhullRect(app,coor,cutoff,cent,hu)
            % Returning the energy of a rectangle specified by "coor" and the
            % rectangular hull. The model is masses and springs (with constant "k") where distance is
            % measured from all found particle centers. All distances larger
            % than "cutoff" have no contribution and there is a shift of
            % energy for active springs in order for them to be
            % energetically favorable.

            % The input is:
            % coor - The coordinates of the rectangle's center and it's
            % rotation angle as (x,y,angle).
            % cutoff - The cutoff distance for connected springs.
            % cent - The (x,y) locations of the detected particles.
            % hu - The rectangular hall.
            % The output is:
            % e - The computed energy.

            coorHull = convertToRect(app,hu,coor(1:2),coor(3));
            shift=-cutoff^2;
            centXRep=repmat(cent(:,1),1,4);
            hXReshape=reshape(coorHull(:,1),1,[]);
            centYRep=repmat(cent(:,2),1,4);
            hYReshape=reshape(coorHull(:,2),1,[]);
            dist=sqrt((hXReshape-centXRep).^2+(hYReshape-centYRep).^2);
            dist(dist>cutoff)=0;
            e=shift*sum(sum(dist>0));
            e=e+sum(sum(dist.^2));
        end

        function [indReturn] = keepUniqueMinRect(app)
            % Screening the found rectangular masks such that the distance between
            % found hulls must be larger than half of the short edge of the
            % hull. The hulls with the minimal energy are kept.  

            % The output is:
            %indReturn - An array indicating if the mask is kept (1) or not (0).

            indReturn=[];
            if size(app.coorOfMasksRect,1)>1
                indChecked=zeros(length(app.coorOfMasksRect),1);
                indReturn=zeros(length(app.coorOfMasksRect),1);
                cut=app.hullRect(2)/2;
                for i=1:size(app.coorOfMasksRect,1)
                    if indChecked(i)==0
                        dist=app.coorOfMasksRect(:,1:2)-app.coorOfMasksRect(i,1:2);
                        dist=sqrt(dist(:,1).^2+dist(:,2).^2);
                        ind=dist<cut;
                        indChecked(ind)=1;
                        indC=find(ind==1);
                        indReturn(indC(1))=1;
                    end
                end
            end
        end

        function num = sensOpti(app,sens,im,minR,maxR,v)
            % Function for the optimization of the number of non-ovelapping particles with respect
            % to sens while keeping the other parameters constant.

            % The input is: 
            % sens - The sensitivity (betrween 0 and 1).
            % im - The image.
            % minR - The minimal radius for the particle detection.
            % maxR - The maximal radius for the particle detection.
            % v - The polarity of the particles (dark/bright).
            % The output is: 
            % num - The number of detected particles.

            [centersT, radiiT,circleMetricT] = imfindcircles(im,[minR maxR],'ObjectPolarity',v,'Method',app.particlesFindingMethod,'Sensitivity',sens);
            num=0;
            if isempty(circleMetricT)==false
                [~, r,~]=overlapCleaning(app,centersT, radiiT,circleMetricT);
                num=length(r);
            end
        end
        
        function [cent,rad,met]=overlapCleaning(app,circTemp,radTemp,metTemp)
            % Going over the sorted list of particles (by metric) and making sure
            % that there are no particles less than the user specified value (in minRadOver) times 
            % the particle's radius. If there are any, keeping the particle with the higher metric. 
            
            % The input is: 
            % circTemp -The locations (x,y) of the detected particles.
            % radTemp - The radii of the detected particles.
            % metTemp - The metric score of the detected particles.
            % The output is: 
            % cent - The locations (x,y) of the remaining particles after overlap cleaning.
            % rad - The radii of the remaining particles after overlap cleaning.
            % met - The metric score of the remaining particles after overlap cleaning.

            lRad=length(radTemp);
            checked=zeros(lRad,1);
            cent=NaN(lRad,2);
            rad=NaN(lRad,1);
            met=NaN(lRad,1);
            for i=1:length(radTemp)
                if checked(i)==0
                    dist=circTemp(:,1:2)-circTemp(i,1:2);
                    dist=sqrt(dist(:,1).^2+dist(:,2).^2);
                    cut=app.minRadOver*radTemp(i);
                    ind=dist<cut;
                    checked(ind)=1;
                    cent(i,1:2)=circTemp(i,1:2);
                    rad(i)=radTemp(i);
                    met(i)=metTemp(i);
                end
            end
            indNoNaN=~isnan(rad);
            cent=cent(indNoNaN,:);
            rad=rad(indNoNaN);
            met=met(indNoNaN);
        end

        function num = sens_manual_Opti(app,sens,manualE,im,minR,maxR,v)
            % Returning the number of found particles for sensitivity
            % specified in sens and manual threshold (for finding the optimal value).

            % The input is: 
            % sens - The sensitivity (betrween 0 and 1).
            % manualE - Edge threshold (betrween 0 and 1).
            % im - The image.
            % minR - The minimal radius for the particle detection.
            % maxR - The maximal radius for the particle detection.
            % v - The polarity of the particles (dark/bright).
            % The output is: 
            % num - The number of detected particles.

            num=0; 
            [centersT, radiiT,circleMetricT] = imfindcircles(im,[minR maxR],'ObjectPolarity',v,'Method',app.particlesFindingMethod,'Sensitivity',sens,'EdgeThreshold',manualE);
            if isempty(circleMetricT)==false
                [~, r,~]=overlapCleaning(app,centersT, radiiT,circleMetricT);
                num=length(r);
            end
        end
        
        function l = createHullTri(~,points)
            % Creating a equilateral triangular hull with edges length, l, from 3 "points". 

            % The input is:
            % points - The coordinates of 3 vertices.
            % The output is:
            % l - The hull's parameter l.

            dist1=norm(points(1,:)-points(2,:));
            dist2=norm(points(2,:)-points(3,:));
            dist3=norm(points(1,:)-points(3,:));
            l=(dist1+dist2+dist3)/3;
        end
        
        function coorTri=convertToTri(~,l,cent,rot)
            % Returning the 3 vertices of a tritangle centered at "cent" and rotated by an angle "rot"
            % with the parameter specified in "l" which is the edge length.). 

            % The input is:
            % l - The l parameter of the triangular hull.
            % cent - The desired center of the triangle as (x,y).
            % rot - The rotation angle of the triangle.
            % The output is:
            % coorTri - The corrdinates of the 3 vertices of the shifted
            % and rotated triangle.

            coorTri=[0,2/3*sqrt(0.75)*l;l/2,-1/3*sqrt(0.75)*l;-l/2,-1/3*sqrt(0.75)*l];
            M = [cos(rot) -sin(rot); sin(rot) cos(rot)];
            coorTri=(M*coorTri')';
            coorTri=coorTri+cent;
        end

        function e = enerHullTri(app,coor,cutoff,centersE,hu)
           % Returning the energy of a triangle specified by "coor" and the
           % triangular hull. The model is masses and springs where distance is
           % measured from all found particle centers. All distances larger
           % than "cutoff" have no contribution and there is a shift of
           % energy for active springs in order for them to be
           % energetically favorable. 

            % The input is:
            % coor - The coordinates of the triangle's center and it's
            % rotation angle as (x,y,angle).
            % cutoff - The cutoff distance for connected springs.
            % cent - The (x,y) locations of the detected particles.
            % hu - The triangular hull.
            % The output is:
            % e - The computed energy.

           coorHull = convertToTri(app,hu,coor(1:2),coor(3));
           shift=-cutoff^2;
           centXRep=repmat(centersE(:,1),1,3);
           hXReshape=reshape(coorHull(:,1),1,[]);
           centYRep=repmat(centersE(:,2),1,3);
           hYReshape=reshape(coorHull(:,2),1,[]);
           dist=sqrt((hXReshape-centXRep).^2+(hYReshape-centYRep).^2);
           dist(dist>cutoff)=0;
           e=shift*sum(sum(dist>0));
           e=e+sum(sum(dist.^2)); 
         end

         function [indReturn] = keepUniqueMinTri(app)
             % Screening the found triangular masks such that the distance between
             % found hulls must be larger than half of the distance in a perfect lattice.
             % The hulls with the minimal energy are kept.

             % The output is:
             %indReturn - An array indicating if the mask is kept (1) or not (0).

             indReturn=[];
             if size(app.coorOfMasksTri,1)>1
                 indChecked=zeros(length(app.coorOfMasksTri),1);
                 indReturn=zeros(length(app.coorOfMasksTri),1);
                 cut=app.hullTri/(sqrt(3)*2);
                 for i=1:length(app.coorOfMasksTri)
                     if indChecked(i)==0
                         dist=app.coorOfMasksTri(:,1:2)-app.coorOfMasksTri(i,1:2);
                         dist=sqrt(dist(:,1).^2+dist(:,2).^2);
                         ind=dist<cut;
                         indChecked(ind)=1;
                         indC=find(ind==1);
                         indReturn(indC(1))=1;
                     end
                 end
             end
         end
        
        function  identifyRect(app)
            % Looking for best fiiting masks in order to assign directions assuming 2/4 fold symmetry.
            % First looking for pairs of particles that are closer than the threshold.
            % Then, finding particles best fitting with the initial masks, optimizing masks with respect to 
            % these particles and keeping good enough fits (according to the chosen parameters).

            cla(app.UIAxes2)
            imshow(app.imageP,'Parent',app.UIAxes2)
            axis(app.UIAxes2,"image")
            hold(app.UIAxes2,'on')
            app.InstructionsTextArea.Value='Computing masks fitting.';
            [a]=app.hullRect(1);
            [b]=app.hullRect(2);
            % Finding pairs of particles with distance smaller than "cut"
            cut=sqrt(a^2+b^2)*0.9;
            cent=app.centers;
            pairs=NaN(8*length(cent),2);
            indP=1;
            for i=1:size(app.centers,1)-1
                dist=sqrt((app.centers(i+1:end,1)-app.centers(i,1)).^2+(app.centers(i+1:end,2)-app.centers(i,2)).^2);
                ind=find(dist<cut)+i;
                lInd=length(ind);
                if lInd>0
                    pairs(indP:indP+lInd-1,:)=[i.*ones(length(ind),1),ind];
                    indP=indP+lInd;
                end
            end
            pairs=pairs(~isnan(pairs(:,1)),:);
            s=size(pairs,1);
            cutoff=mean(app.radii);
            eCutoff=app.MultiplicativerectangularEditField.Value*(-cutoff^2+(cutoff/app.FractionrectangularEditField.Value)^2);
            % Creating initial locations for hulls which have lower energy than "eCutoff"
            coorIniList=nan(2*s,3);
            coorIniBR=[a/2,b/2];
            hu=app.hullRect;
            for i=1:s
                ang=atan2(cent(pairs(i,2),2)-cent(pairs(i,1),2),cent(pairs(i,2),1)-cent(pairs(i,1),1));
                M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                coorIni=(M*coorIniBR')';
                coorIni=coorIni+cent(pairs(i,1),:);
                iniE=enerhullRect(app,[coorIni,ang],cutoff,cent,hu);
                if iniE<eCutoff
                    coorIniList(i,:)=[coorIni,ang];
                end
            end
            coorIniBR=[a/2,-b/2];
            for i=1:s
                ang=atan2(cent(pairs(i,2),2)-cent(pairs(i,1),2),cent(pairs(i,2),1)-cent(pairs(i,1),1));
                M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                coorIni=(M*coorIniBR')';
                coorIni=coorIni+cent(pairs(i,1),:);
                iniE=enerhullRect(app,[coorIni,ang],cutoff,cent,hu);
                if iniE<eCutoff
                    coorIniList(i+s,:)=[coorIni,ang];
                end
            end
            coorIniList=coorIniList(~isnan(coorIniList(:,1)),:);
            % Optimizing initial conditions by finding the particles
            % associated with the initial guess and taking the mean
            % center and angle.
            if isempty(coorIniList)==false
                indPerCentTemp=NaN(size(coorIniList,1),4);
                for i=1:size(coorIniList,1)
                    minList=NaN(1,4);
                    centHu=coorIniList(i,1:2);
                    ang=coorIniList(i,3);
                    p1=centHu-(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                    dist=sqrt((cent(:,1)-p1(1)).^2+(cent(:,2)-p1(2)).^2);
                    [~,minInd]=min(dist);
                    minList(1)=minInd;
                    p2=centHu+(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                    dist=sqrt((cent(:,1)-p2(1)).^2+(cent(:,2)-p2(2)).^2);
                    [~,minInd]=min(dist);
                    minList(2)=minInd;
                    p3=centHu+(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                    dist=sqrt((cent(:,1)-p3(1)).^2+(cent(:,2)-p3(2)).^2);
                    [~,minInd]=min(dist);
                    minList(3)=minInd;
                    p4=centHu-(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                    dist=sqrt((cent(:,1)-p4(1)).^2+(cent(:,2)-p4(2)).^2);
                    [~,minInd]=min(dist);
                    minList(4)=minInd;
                    if length(unique(minList))==4
                        indPerCentTemp(i,:)=minList;
                    end
                end
                indPerCentTemp=indPerCentTemp(~isnan(indPerCentTemp(:,1)),:);
                coorIniList1=zeros(size(indPerCentTemp,1),3);
                minEList=zeros(size(indPerCentTemp,1),1);
                for i=1:size(indPerCentTemp,1)
                    p=[cent(indPerCentTemp(i,1),:);cent(indPerCentTemp(i,2),:);cent(indPerCentTemp(i,3),:);cent(indPerCentTemp(i,4),:)];
                    c1=p(1,1)-p(3,1);
                    c2=p(1,2)-p(3,2);
                    c3=p(2,1)-p(4,1);
                    c4=p(2,2)-p(4,2);
                    arg=(c3+c1*(1-(a/b)^2)/(1+(a/b)^2)+2*c2*(a/b)/(1+(a/b)^2))/(c1^2+c2^2+c3^2+c4^2+2*(c1*c3+c2*c4)*(1-(a/b)^2)/(1+(a/b)^2)+4*(c2*c3-c1*c4)*(a/b)/(1+(a/b)^2))^0.5;
                    coor1=[mean(p(:,1)),mean(p(:,2)),acos(arg)-atan(b/a)];
                    coor2=[mean(p(:,1)),mean(p(:,2)),acos(-arg)-atan(b/a)];
                    minETry1=enerhullRect(app,coor1,cutoff,cent(indPerCentTemp(i,:),:),hu);
                    minETry2=enerhullRect(app,coor2,cutoff,cent(indPerCentTemp(i,:),:),hu);
                    if minETry1<minETry2
                        coorIniList1(i,:)=coor1;
                        minEList(i)=minETry1;
                    else
                        coorIniList1(i,:)=coor2;
                        minEList(i)=minETry2;
                    end
                end
                % Keeping unique fits, sorting by energy and apply keepUniqueMinRect.
                [~,~,J] = uniquetol(coorIniList1, 1e-4, 'ByRows', true);
                firstidx = sort(accumarray(J,(1:length(J))',[],@min));
                coorIniList1 = coorIniList1(firstidx,:);
                minEList=minEList(firstidx);
                indPerCentTemp=indPerCentTemp(firstidx,:);
                [minEList,I]=sort(minEList);
                coorIniList1=coorIniList1(I,:);
                indPerCentTemp=indPerCentTemp(I,:);
                app.indPerCentRectNotSorted=indPerCentTemp;
                app.coorOfMasksRectNotSorted=coorIniList1;
                app.eofNotSortedMasksRect=minEList;
                if app.SymmetryrectangleSwitch.Value=='2'
                        app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)<0,3)=app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)<0,3)+pi;
                        app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)>pi,3)=app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)>pi,3)-pi;
                else
                        app.coorOfMasksRectNotSorted(:,3)=mod(app.coorOfMasksRectNotSorted(:,3),pi/2);
                        app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)<0,3)=app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)<0,3)+pi/2;
                end
                app.coorOfMasksRect=app.coorOfMasksRectNotSorted;
                app.eOfMasksRect=app.eofNotSortedMasksRect;
                [ind2] = keepUniqueMinRect(app);
                app.coorOfMasksRect= app.coorOfMasksRect(ind2==1,:);
                app.eOfMasksRect=app.eOfMasksRect(ind2==1);
                app.indPerCentRect=app.indPerCentRectNotSorted(ind2==1,:);
                app.InstructionsTextArea.Value='Done.';
                plotDirectionColor(app,app.UIAxes2,2)
            else
                app.InstructionsTextArea.Value='No initial masks below minimal energy. Try to change the parameters.';
            end
        end
        
        function identifyRectParallel(app)
            % Looking for best fiiting masks in order to assign directions assuming 2/4 fold symmetry. 
            % First looking for pairs of particles that are closer than the threshold. 
            % Then, finding particles best fitting with the initial masks, optimizing masks with respect to these particles and]
            % keeping good enough fits (according to the chosen parameters).

            cla(app.UIAxes2)
            imshow(app.imageP,'Parent',app.UIAxes2)
            axis(app.UIAxes2,"image")
            hold(app.UIAxes2,'on')
            app.InstructionsTextArea.Value='Computing masks fitting.';
            [a]=app.hullRect(1);
            [b]=app.hullRect(2);
            % Finding pairs of particles with distance smaller than "cut"
            cut=sqrt(a^2+b^2)*0.9; 
            pairs=NaN(8*size(app.centers,1),2);
            indP=1;
            for i=1:size(app.centers,1)-1
                dist=sqrt((app.centers(i+1:end,1)-app.centers(i,1)).^2+(app.centers(i+1:end,2)-app.centers(i,2)).^2);
                ind=find(dist<cut)+i;
                lInd=length(ind);
                if lInd>0
                    pairs(indP:indP+lInd-1,:)=[i.*ones(length(ind),1),ind];
                    indP=indP+lInd;
                end
            end
            parpool('local', maxNumCompThreads);
            pairs=pairs(~isnan(pairs(:,1)),:);
            pairs=parallel.pool.Constant(pairs);
            cent=parallel.pool.Constant(app.centers);
            s=size(pairs.Value,1);
            cutoff=mean(app.radii);
            eCutoff=app.MultiplicativerectangularEditField.Value*(-cutoff^2+(cutoff/app.FractionrectangularEditField.Value)^2);
            % Creating initial locations for hulls which have lower
            % energy than "eCutoff"
            coorIniList=nan(2*s,3);
            coorIniBR=[a/2,b/2];
            parfor i=1:s
                ang=atan2(cent.Value(pairs.Value(i,2),2)-cent.Value(pairs.Value(i,1),2),cent.Value(pairs.Value(i,2),1)-cent.Value(pairs.Value(i,1),1));
                M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                coorIni=(M*coorIniBR')';
                coorIni=coorIni+cent.Value(pairs.Value(i,1),:);
                iniE=enerHullRectExternal([coorIni,ang],cutoff,[a,b],cent.Value);
                if iniE<eCutoff
                   coorIniList(i,:)=[coorIni,ang];
                end
            end
            coorIniBR2=[a/2,-b/2];
            parfor i=1:s
                ang=atan2(cent.Value(pairs.Value(i,2),2)-cent.Value(pairs.Value(i,1),2),cent.Value(pairs.Value(i,2),1)-cent.Value(pairs.Value(i,1),1));                
                M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                coorIni=(M*coorIniBR2')';
                coorIni=coorIni+cent.Value(pairs.Value(i,1),:);
                iniE=enerHullRectExternal([coorIni,ang],cutoff,[a,b],cent.Value);
                if iniE<eCutoff
                    coorIniList(i+s,:)=[coorIni,ang];
                end
            end
            coorIniList=coorIniList(~isnan(coorIniList(:,1)),:);
            coorIniList=parallel.pool.Constant(coorIniList);
            % Optimizing initial conditions by finding the particles
            % associated with the initial guess and taking the mean
            % center and angle. 
            if isempty(coorIniList.Value)==false
                indPerCentTemp=NaN(size(coorIniList.Value,1),4);
                parfor i=1:size(coorIniList.Value,1)
                    minList=NaN(1,4);
                    centHu=coorIniList.Value(i,1:2);
                    ang=coorIniList.Value(i,3);
                    p1=centHu-(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                    dist=sqrt((cent.Value(:,1)-p1(1)).^2+(cent.Value(:,2)-p1(2)).^2);
                    [~,minInd]=min(dist);
                    minList(1)=minInd;
                    p2=centHu+(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                    dist=sqrt((cent.Value(:,1)-p2(1)).^2+(cent.Value(:,2)-p2(2)).^2);
                    [~,minInd]=min(dist);
                    minList(2)=minInd;
                    p3=centHu+(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                    dist=sqrt((cent.Value(:,1)-p3(1)).^2+(cent.Value(:,2)-p3(2)).^2);
                    [~,minInd]=min(dist);
                    minList(3)=minInd;
                    p4=centHu-(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                    dist=sqrt((cent.Value(:,1)-p4(1)).^2+(cent.Value(:,2)-p4(2)).^2);
                    [~,minInd]=min(dist);
                    minList(4)=minInd;
                    if length(unique(minList))==4
                        indPerCentTemp(i,:)=minList;
                    end
                end
                indPerCentTemp=indPerCentTemp(~isnan(indPerCentTemp(:,1)),:);
                indPerCentTemp2=parallel.pool.Constant(indPerCentTemp);
                coorIniList1=zeros(size(indPerCentTemp2.Value,1),3);
                minEList=zeros(size(indPerCentTemp2.Value,1),1);
                parfor i=1:size(indPerCentTemp2.Value,1)
                     p=[cent.Value(indPerCentTemp2.Value(i,1),:);cent.Value(indPerCentTemp2.Value(i,2),:);cent.Value(indPerCentTemp2.Value(i,3),:);cent.Value(indPerCentTemp2.Value(i,4),:)];
                     c1=p(1,1)-p(3,1);
                     c2=p(1,2)-p(3,2);
                     c3=p(2,1)-p(4,1);
                     c4=p(2,2)-p(4,2);
                     arg=(c3+c1*(1-(a/b)^2)/(1+(a/b)^2)+2*c2*(a/b)/(1+(a/b)^2))/(c1^2+c2^2+c3^2+c4^2+2*(c1*c3+c2*c4)*(1-(a/b)^2)/(1+(a/b)^2)+4*(c2*c3-c1*c4)*(a/b)/(1+(a/b)^2))^0.5;
                     coor1=[mean(p(:,1)),mean(p(:,2)),acos(arg)-atan(b/a)]; 
                     coor2=[mean(p(:,1)),mean(p(:,2)),acos(-arg)-atan(b/a)];
                     minETry1=enerHullRectExternal(coor1,cutoff,[a,b],cent.Value(indPerCentTemp2.Value(i,:),:));
                     minETry2=enerHullRectExternal(coor2,cutoff,[a,b],cent.Value(indPerCentTemp2.Value(i,:),:));
                     if minETry1<minETry2
                        coorIniList1(i,:)=coor1;
                        minEList(i)=minETry1;
                     else
                         coorIniList1(i,:)=coor2;
                         minEList(i)=minETry2;
                     end
                end
                delete(gcp('nocreate'));
                % Keeping unique fi, sorting by energy and apply keepUniqueMinRect
                [~,~,J] = uniquetol(coorIniList1, 1e-4, 'ByRows', true);
                firstidx = sort(accumarray(J,(1:length(J))',[],@min));
                coorIniList1 = coorIniList1(firstidx,:);
                minEList=minEList(firstidx);
                indPerCentTemp3=indPerCentTemp2.Value(firstidx,:);
                [minEList,I]=sort(minEList);
                coorIniList1=coorIniList1(I,:);
                indPerCentTemp3=indPerCentTemp3(I,:);
                app.indPerCentRectNotSorted=indPerCentTemp3;
                app.coorOfMasksRectNotSorted=coorIniList1;
                app.eofNotSortedMasksRect=minEList;
                if app.SymmetryrectangleSwitch.Value=='2'
                        app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)<0,3)=app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)<0,3)+pi;
                        app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)>pi,3)=app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)>pi,3)-pi;
                else
                        app.coorOfMasksRectNotSorted(:,3)=mod(app.coorOfMasksRectNotSorted(:,3),pi/2);
                        app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)<0,3)=app.coorOfMasksRectNotSorted(app.coorOfMasksRectNotSorted(:,3)<0,3)+pi/2;
                end
                app.coorOfMasksRect=app.coorOfMasksRectNotSorted;
                app.eOfMasksRect=app.eofNotSortedMasksRect;
                [ind2] = keepUniqueMinRect(app);
                app.coorOfMasksRect= app.coorOfMasksRect(ind2==1,:);
                app.eOfMasksRect=app.eOfMasksRect(ind2==1);
                app.indPerCentRect=app.indPerCentRectNotSorted(ind2==1,:);
                app.InstructionsTextArea.Value='Done.';
                plotDirectionColor(app,app.UIAxes2,2)
            else
                app.InstructionsTextArea.Value='No initial masks below minimal energy. Try to change the parameters.';
                delete(gcp('nocreate'));
            end
        end

            function identifyTri(app)
                % Looking for best fiiting masks in order to assign directions assuming 3 fold symmetry. 
                % First looking for pairs of particles that are closer than the threshold. 
                % Then, screening masks with edge oriented along a pair of vertices according to MLS,
                % finding the third vertex per mask, optimizes mask position and keeps good enough fits (according to the chosen parameters). 
                
                cla(app.UIAxes2)
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                app.InstructionsTextArea.Value='Computing masks fitting.';
                a=app.hullTri;
                % Finding pairs of particles with distance smaller than "cut"  
                cut=a*1.3;
                cent=app.centers;
                pairs=NaN(8*length(cent),2);
                indP=1;
                for i=1:size(app.centers,1)-1
                    dist=sqrt((app.centers(i+1:end,1)-app.centers(i,1)).^2+(app.centers(i+1:end,2)-app.centers(i,2)).^2);
                    ind=find(dist<cut)+i;
                    lInd=length(ind);
                    if lInd>0
                        pairs(indP:indP+lInd-1,:)=[i.*ones(length(ind),1),ind];
                        indP=indP+lInd;
                    end
                end
                pairs=pairs(~isnan(pairs(:,1)),:);
                s=size(pairs,1);
                cutoff=mean(app.radii);
                eCutoff=app.MultiplicativetriangularEditField.Value*(-cutoff^2+(cutoff/app.FractiontriangularEditField.Value)^2);
                % Creating initial locations for hulls which have lower
                % energy than "eCutoff"
                coorIniList=nan(2*s,3);
                l=sqrt(0.75)*a;
                coorIniBR=[a/2,l/3];
                for i=1:s
                    ang=atan2(cent(pairs(i,2),2)-cent(pairs(i,1),2),cent(pairs(i,2),1)-cent(pairs(i,1),1));                    
                    M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                    coorIni=(M*coorIniBR')';
                    coorIni=coorIni+cent(pairs(i,1),:);
                    iniE=enerHullTri(app,[coorIni,ang],cutoff,cent,a);
                    if iniE<eCutoff
                        coorIniList(i,:)=[coorIni,ang];
                    end
                end
                coorIniBR=[a/2,-l/3];
                for i=1:s
                    ang=atan2(cent(pairs(i,2),2)-cent(pairs(i,1),2),cent(pairs(i,2),1)-cent(pairs(i,1),1));
                    M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                    coorIni=(M*coorIniBR')';
                    coorIni=coorIni+cent(pairs(i,1),:);
                    iniE=enerHullTri(app,[coorIni,ang],cutoff,cent,a);
                    if iniE<eCutoff
                        coorIniList(i+s,:)=[coorIni,ang];
                    end
                end
                coorIniList=coorIniList(~isnan(coorIniList(:,1)),:);
                if isempty(coorIniList)==false
                    coorIniList(:,3)=mod(coorIniList(:,3),2*pi/3);
                    % Optimizing initial conditions by finding the particles
                    % associated with the initial guess and taking the mean
                    % center and angle. 
                    indPerCentTemp=NaN(size(coorIniList,1),3);
                    for i=1:size(coorIniList,1)
                        minList=NaN(1,3);
                        centHu=coorIniList(i,1:2);
                        ang=coorIniList(i,3);      
                        p1=centHu+l*2/3*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent(:,1)-p1(1)).^2+(cent(:,2)-p1(2)).^2);
                        [~,minInd]=min(dist);
                        minList(1)=minInd;       
                        p2=centHu+(a/2)*[cos(ang),sin(ang)]-l/3*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent(:,1)-p2(1)).^2+(cent(:,2)-p2(2)).^2);
                        [~,minInd]=min(dist);
                        minList(2)=minInd;       
                        p3=centHu-(a/2)*[cos(ang),sin(ang)]-l/3*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent(:,1)-p3(1)).^2+(cent(:,2)-p3(2)).^2);
                        [~,minInd]=min(dist);
                        minList(3)=minInd;
                        if length(unique(minList))==3
                            indPerCentTemp(i,:)=minList;
                        end
                    end
                    indPerCentTemp=indPerCentTemp(~isnan(indPerCentTemp(:,1)),:);
                    coorIniList1=zeros(size(indPerCentTemp,1),3);
                    minEList=zeros(size(indPerCentTemp,1),1);
                    for i=1:size(indPerCentTemp,1)
                         p=[cent(indPerCentTemp(i,1),:);cent(indPerCentTemp(i,2),:);cent(indPerCentTemp(i,3),:)];
                         ang=atan((2*p(1,1)-p(2,1)-p(3,1)+sqrt(3)*(p(3,2)-p(2,2)))/(sqrt(3)*(p(3,1)-p(2,1))-2*p(1,2)+p(2,2)+p(3,2)));
                         coor1=[mean(p(:,1)),mean(p(:,2)),ang]; 
                         coor2=[mean(p(:,1)),mean(p(:,2)),ang+pi];
                         minETry1=enerHullTri(app,coor1,cutoff,cent(indPerCentTemp(i,:),:),a);
                         minETry2=enerHullTri(app,coor2,cutoff,cent(indPerCentTemp(i,:),:),a);
                         if minETry1<minETry2
                            coorIniList1(i,:)=coor1;
                            minEList(i)=minETry1;
                         else
                             coorIniList1(i,:)=coor2;
                             minEList(i)=minETry2;
                         end
                    end
                    % Keeping unique fits, sorting by energy and apply keepUniqueMinTri.
                    [~,~,J] = uniquetol(coorIniList1, 1e-4, 'ByRows', true);
                    firstidx = sort(accumarray(J,(1:length(J))',[],@min));
                    coorIniList1 = coorIniList1(firstidx,:);
                    minEList=minEList(firstidx);
                    indPerCentTemp=indPerCentTemp(firstidx,:);
                    [minEList,I]=sort(minEList);
                    coorIniList1=coorIniList1(I,:);
                    indPerCentTemp=indPerCentTemp(I,:);
                    app.indPerCentTriNotSorted=indPerCentTemp;
                    app.coorOfMasksTriNotSorted=coorIniList1;
                    app.eofNotSortedMasksTri=minEList;
                    app.coorOfMasksTriNotSorted(:,3)=mod(app.coorOfMasksTriNotSorted(:,3),2*pi/3);
                    app.coorOfMasksTriNotSorted(app.coorOfMasksTriNotSorted(:,3)<0,3)=app.coorOfMasksTriNotSorted(app.coorOfMasksTriNotSorted(:,3)<0,3)+2*pi/3;
                    app.coorOfMasksTri=app.coorOfMasksTriNotSorted;
                    app.eOfMasksTri=app.eofNotSortedMasksTri;
                    [ind2] = keepUniqueMinTri(app);
                    app.coorOfMasksTri= app.coorOfMasksTri(ind2==1,:);
                    app.eOfMasksTri=app.eOfMasksTri(ind2==1);
                    app.indPerCentTri=app.indPerCentTriNotSorted(ind2==1,:);
                    app.InstructionsTextArea.Value='Done.';
                    plotDirectionColor(app,app.UIAxes2,3)
                else
                    app.InstructionsTextArea.Value='No initial masks below minimal energy. Try to change the parameters.';
                end
            end 

            function identifyTriParallel(app)
                    % Looking for best fiiting masks in order to assign directions assuming 3 fold symmetry. 
                    % First looking for pairs of particles that are closer than the threshold. 
                    % Then, screening masks with edge oriented along a pair of vertices according to MLS,
                    % finding the third vertex per mask, optimizes mask position and keeps good enough fits (according to the chosen parameters). 
                    
                    app.imageP=app.imageP;
                    imshow(app.imageP,'Parent',app.UIAxes2)
                    axis(app.UIAxes2,"image")
                    hold(app.UIAxes2,'on')
                    app.InstructionsTextArea.Value='Computing masks fitting.';
                    a=app.hullTri;
                    % Find pairs of particles with distance smaller than "cut"  
                    cut=a*1.3;
                    cent=app.centers;
                    pairs=NaN(8*length(cent),2);
                    indP=1;
                    for i=1:size(app.centers,1)-1
                        dist=sqrt((app.centers(i+1:end,1)-app.centers(i,1)).^2+(app.centers(i+1:end,2)-app.centers(i,2)).^2);
                        ind=find(dist<cut)+i;
                        lInd=length(ind);
                        if lInd>0
                            pairs(indP:indP+lInd-1,:)=[i.*ones(length(ind),1),ind];
                            indP=indP+lInd;
                        end
                    end
                   parpool('local', maxNumCompThreads);
                   pairs=pairs(~isnan(pairs(:,1)),:);
                   pairs=parallel.pool.Constant(pairs);
                   cent=parallel.pool.Constant(app.centers);
                   huPar=parallel.pool.Constant(app.hullTri);
                   s=size(pairs.Value,1);
                   cutoff=mean(app.radii);
                   eCutoff=app.MultiplicativetriangularEditField.Value*(-cutoff^2+(cutoff/app.FractiontriangularEditField.Value)^2);
                    % Creating initial locations for hulls which have lower
                    % energy than "eCutoff"
                    coorIniList=nan(2*s,3);
                    l=sqrt(0.75)*a;
                    coorIniBR=[a/2,l/3];
                    parfor i=1:s
                        ang=atan2(cent.Value(pairs.Value(i,2),2)-cent.Value(pairs.Value(i,1),2),cent.Value(pairs.Value(i,2),1)-cent.Value(pairs.Value(i,1),1));
                        M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                        coorIni=(M*coorIniBR')';
                        coorIni=coorIni+cent.Value(pairs.Value(i,1),:);
                        iniE=enerHullTriExternal([coorIni,ang],cutoff,a,cent.Value,huPar.Value);
                        if iniE<eCutoff
                            coorIniList(i,:)=[coorIni,ang];
                        end
                    end
                    coorIniBR2=[a/2,-l/3];
                    parfor j=1:s
                        ang=atan2(cent.Value(pairs.Value(j,2),2)-cent.Value(pairs.Value(j,1),2),cent.Value(pairs.Value(j,2),1)-cent.Value(pairs.Value(j,1),1));
                        M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                        coorIni=(M*coorIniBR2')';
                        coorIni=coorIni+cent.Value(pairs.Value(j,1),:);
                        iniE=enerHullTriExternal([coorIni,ang],cutoff,a,cent.Value,huPar.Value);
                        if iniE<eCutoff
                            coorIniList(j+s,:)=[coorIni,ang];
                        end
                    end
                    coorIniList=coorIniList(~isnan(coorIniList(:,1)),:);
                    coorIniList(:,3)=mod(coorIniList(:,3),2*pi/3);
                    coorIniList=parallel.pool.Constant(coorIniList);
                    if isempty(coorIniList.Value)==false
                        % Optimizing initial conditions by finding the particles
                        % associated with the initial guess and taking the mean
                        % center and angle. 
                        indPerCentTemp=NaN(size(coorIniList.Value,1),3);
                        parfor i=1:size(coorIniList.Value,1)
                            minList=NaN(1,3);
                            centHu=coorIniList.Value(i,1:2);
                            ang=coorIniList.Value(i,3);           
                            p1=centHu+l*2/3*[cos(ang+pi/2),sin(ang+pi/2)];
                            dist=sqrt((cent.Value(:,1)-p1(1)).^2+(cent.Value(:,2)-p1(2)).^2);
                            [~,minInd]=min(dist);
                            minList(1)=minInd;        
                            p2=centHu+(a/2)*[cos(ang),sin(ang)]-l/3*[cos(ang+pi/2),sin(ang+pi/2)];
                            dist=sqrt((cent.Value(:,1)-p2(1)).^2+(cent.Value(:,2)-p2(2)).^2);
                            [~,minInd]=min(dist);
                            minList(2)=minInd;         
                            p3=centHu-(a/2)*[cos(ang),sin(ang)]-l/3*[cos(ang+pi/2),sin(ang+pi/2)];
                            dist=sqrt((cent.Value(:,1)-p3(1)).^2+(cent.Value(:,2)-p3(2)).^2);
                            [~,minInd]=min(dist);
                            minList(3)=minInd;
                            if length(unique(minList))==3
                                indPerCentTemp(i,:)=minList;
                            end
                        end
                        indPerCentTemp=indPerCentTemp(~isnan(indPerCentTemp(:,1)),:);    
                        indPerCentTemp2=parallel.pool.Constant(indPerCentTemp);
                        coorIniList1=zeros(size(indPerCentTemp2.Value,1),3);
                        minEList=zeros(size(indPerCentTemp2.Value,1),1);
                        parfor i=1:size(indPerCentTemp,1)
                             p=[cent.Value(indPerCentTemp2.Value(i,1),:);cent.Value(indPerCentTemp2.Value(i,2),:);cent.Value(indPerCentTemp2.Value(i,3),:)];
                             ang=atan((2*p(1,1)-p(2,1)-p(3,1)+sqrt(3)*(p(3,2)-p(2,2)))/(sqrt(3)*(p(3,1)-p(2,1))-2*p(1,2)+p(2,2)+p(3,2)));
                             coor1=[mean(p(:,1)),mean(p(:,2)),ang]; 
                             coor2=[mean(p(:,1)),mean(p(:,2)),ang+pi];
                             minETry1=enerHullTriExternal(coor1,cutoff,a,cent.Value(indPerCentTemp2.Value(i,:),:));
                             minETry2=enerHullTriExternal(coor2,cutoff,a,cent.Value(indPerCentTemp2.Value(i,:),:));
                             if minETry1<minETry2
                                coorIniList1(i,:)=coor1;
                                minEList(i)=minETry1;
                             else
                                 coorIniList1(i,:)=coor2;
                                 minEList(i)=minETry2;
                             end
                        end
                        delete(gcp('nocreate'));
                        % Keeping unique fits, sorting by energy and apply keepUniqueMinTri.
                        [~,~,J] = uniquetol(coorIniList1, 1e-4, 'ByRows', true);
                        firstidx = sort(accumarray(J,(1:length(J))',[],@min));
                        coorIniList1 = coorIniList1(firstidx,:);
                        minEList=minEList(firstidx);
                        indPerCentTemp3=indPerCentTemp2.Value(firstidx,:);
                        [minEList,I]=sort(minEList);
                        coorIniList1=coorIniList1(I,:);
                        indPerCentTemp3=indPerCentTemp3(I,:);
                        app.indPerCentTriNotSorted=indPerCentTemp3;
                        app.coorOfMasksTriNotSorted=coorIniList1;
                        app.eofNotSortedMasksTri=minEList;
                        app.coorOfMasksTriNotSorted(:,3)=mod(app.coorOfMasksTriNotSorted(:,3),2*pi/3);
                        app.coorOfMasksTriNotSorted(app.coorOfMasksTriNotSorted(:,3)<0,3)=app.coorOfMasksTriNotSorted(app.coorOfMasksTriNotSorted(:,3)<0,3)+2*pi/3;
                        app.coorOfMasksTri=app.coorOfMasksTriNotSorted;
                        app.eOfMasksTri=app.eofNotSortedMasksTri;
                        [ind2] = keepUniqueMinTri(app);
                        app.coorOfMasksTri= app.coorOfMasksTri(ind2==1,:);
                        app.eOfMasksTri=app.eOfMasksTri(ind2==1);
                        app.indPerCentTri=app.indPerCentTriNotSorted(ind2==1,:);
                        app.InstructionsTextArea.Value='Done.';
                        plotDirectionColor(app,app.UIAxes2,3)
                    else
                        app.InstructionsTextArea.Value='No initial masks below minimal energy. Try to change the parameters.';
                        delete(gcp('nocreate'));
                    end
            end

            function  identifyHexa(app)
                % Looking for best fiiting masks in order to assign directions assuming 2/6 fold symmetry. 
                % First looking for pairs of particles that are closer than the threshold. 
                % Then, finding particles best fitting with the initial masks, optimizing masks with respect to these particles and]
                % keeping good enough fits (according to the chosen parameters).
                
                cla(app.UIAxes2)
                app.imageP=app.imageP;
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                app.InstructionsTextArea.Value='Computing mask fitiing.';
                [a]=app.hullHexa(1);
                [b]=app.hullHexa(2);
                [c]=app.hullHexa(3);
                % Finding pairs of particles with distance smaller than "cut"  
                cut=max(a,sqrt((b/2)^2+c^2))*1.25;
                cent=app.centers;
                pairs=NaN(8*length(cent),2);
                indP=1;
                for i=1:size(app.centers,1)-1
                    dist=sqrt((app.centers(i+1:end,1)-app.centers(i,1)).^2+(app.centers(i+1:end,2)-app.centers(i,2)).^2);
                    ind=find(dist<cut)+i;
                    lInd=length(ind);
                    if lInd>0
                        pairs(indP:indP+lInd-1,:)=[i.*ones(length(ind),1),ind];
                        indP=indP+lInd;
                    end
                end
                pairs=pairs(~isnan(pairs(:,1)),:);
                s=size(pairs,1);
                cutoff=mean(app.radii);
                eCutoff=app.MultiplicativehexagonalEditField.Value*(-cutoff^2+(cutoff/app.FractionhexagonalEditField.Value)^2);
                hu=app.hullHexa;
                % Creating initial locations for hulls which have lower
                % energy than "eCutoff" that are parallel to the found
                % pairs
                coorIniList=nan(2*s,3);
                coorIniBR=[a/2,b/2];
                for i=1:s
                    ang=atan2(cent(pairs(i,2),2)-cent(pairs(i,1),2),cent(pairs(i,2),1)-cent(pairs(i,1),1));
                    M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                    coorIni=(M*coorIniBR')';
                    coorIni=coorIni+cent(pairs(i,1),:);
                    iniE=enerHullHexa(app,[coorIni,ang],cutoff,cent,hu);
                    if iniE<eCutoff
                        coorIniList(i,:)=[coorIni,ang];
                    end
                end
                coorIniBR2=[a/2,-b/2];
                for i=1:s
                    ang=atan2(cent(pairs(i,2),2)-cent(pairs(i,1),2),cent(pairs(i,2),1)-cent(pairs(i,1),1));
                    M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                    coorIni=(M*coorIniBR2')';
                    coorIni=coorIni+cent(pairs(i,1),:);
                    iniE=enerHullHexa(app,[coorIni,ang],cutoff,cent,hu);
                    if iniE<eCutoff
                        coorIniList(i+s,:)=[coorIni,ang];
                    end
                end
                coorIniList=coorIniList(~isnan(coorIniList(:,1)),:);
                % Optimizing initial conditions by finding the particles
                % associated with the initial guess and taking the mean
                % center and angle.
                if isempty(coorIniList)==false
                    indPerCentTemp=NaN(size(coorIniList,1),6);
                    for i=1:size(coorIniList,1)
                        minList=NaN(1,6);
                        centHu=coorIniList(i,1:2);
                        ang=coorIniList(i,3);       
                        p1=centHu+(a/2+c)*[cos(ang),sin(ang)];
                        dist=sqrt((cent(:,1)-p1(1)).^2+(cent(:,2)-p1(2)).^2);
                        [~,minInd]=min(dist);
                        minList(1)=minInd;     
                        p2=centHu+(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent(:,1)-p2(1)).^2+(cent(:,2)-p2(2)).^2);
                        [~,minInd]=min(dist);
                        minList(2)=minInd;        
                        p3=centHu-(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent(:,1)-p3(1)).^2+(cent(:,2)-p3(2)).^2);
                        [~,minInd]=min(dist);
                        minList(3)=minInd;       
                        p4=centHu-(a/2+c)*[cos(ang),sin(ang)];
                        dist=sqrt((cent(:,1)-p4(1)).^2+(cent(:,2)-p4(2)).^2);
                        [~,minInd]=min(dist);
                        minList(4)=minInd;        
                        p5=centHu-(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent(:,1)-p5(1)).^2+(cent(:,2)-p5(2)).^2);
                        [~,minInd]=min(dist);
                        minList(5)=minInd;      
                        p6=centHu+(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent(:,1)-p6(1)).^2+(cent(:,2)-p6(2)).^2);
                        [~,minInd]=min(dist);
                        minList(6)=minInd; 
                        if length(unique(minList))==6
                            indPerCentTemp(i,:)=minList;
                        end
                    end
                    indPerCentTemp=indPerCentTemp(~isnan(indPerCentTemp(:,1)),:);
                    coorIniList1=zeros(size(indPerCentTemp,1),3);
                    minEList=zeros(size(indPerCentTemp,1),1);
                    for i=1:size(indPerCentTemp,1)
                        p=[cent(indPerCentTemp(i,1),:);cent(indPerCentTemp(i,2),:);cent(indPerCentTemp(i,3),:);cent(indPerCentTemp(i,4),:);cent(indPerCentTemp(i,5),:);cent(indPerCentTemp(i,6),:)];
                        arg=((a+2*c)/(2*sqrt(a^2+b^2))*(p(1,2)-p(4,2))+(p(6,2)-p(5,2)+p(2,2)-p(3,2))*cos(atan(b/a))+(-p(6,1)-p(5,1)+p(2,1)+p(3,1))*sin(atan(b/a)))/((a+2*c)/(2*sqrt(a^2+b^2))*(p(1,1)-p(4,1))+(p(6,2)+p(5,2)-p(2,2)-p(3,2))*sin(atan(b/a))+(p(6,1)-p(5,1)+p(2,1)-p(3,1))*cos(atan(b/a)));
                        ang=atan(arg);
                        coor1=[mean(p(:,1)),mean(p(:,2)),ang];
                        minETry=enerHullHexa(app,coor1,cutoff,cent(indPerCentTemp(i,:),:),hu);
                        coorIniList1(i,:)=coor1;
                        minEList(i)=minETry;
                    end
                    % Keeping unique fits, sorting by energy and apply keepUniqueMinHexa.
                    [~,~,J] = uniquetol(coorIniList1, 1e-4, 'ByRows', true);
                    firstidx = sort(accumarray(J,(1:length(J))',[],@min));
                    coorIniList1 = coorIniList1(firstidx,:);
                    minEList=minEList(firstidx);
                    indPerCentTemp=indPerCentTemp(firstidx,:);
                    [minEList,I]=sort(minEList);
                    coorIniList1=coorIniList1(I,:);
                    indPerCentTemp=indPerCentTemp(I,:);
                    app.indPerCentHexaNotSorted=indPerCentTemp;
                    app.coorOfMasksHexaNotSorted=coorIniList1;
                    app.eofNotSortedMasksHexa=minEList;
                    if app.SymmetryhexagonSwitch.Value=='2'
                        app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)<0,3)=app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)<0,3)+pi;
                        app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)>pi,3)=app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)>pi,3)-pi;
                    else
                        app.coorOfMasksHexaNotSorted(:,3)=mod(app.coorOfMasksHexaNotSorted(:,3),pi/3);
                        app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)<0,3)=app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)<0,3)+pi/3;
                    end
                    app.coorOfMasksHexa=app.coorOfMasksHexaNotSorted;
                    app.eOfMasksHexa=app.eofNotSortedMasksHexa;
                    [ind2] = keepUniqueMinHexa(app);
                    app.coorOfMasksHexa= app.coorOfMasksHexa(ind2==1,:);
                    app.eOfMasksHexa=app.eOfMasksHexa(ind2==1);
                    app.indPerCentHexa=app.indPerCentHexaNotSorted(ind2==1,:);
                    app.InstructionsTextArea.Value='Done.';
                    plotDirectionColor(app,app.UIAxes2,1)
                else
                    app.InstructionsTextArea.Value='No initial masks below minimal energy. Try to change the parameters.';
                end
            end

            function  identifyHexaParallel(app)
                % Looking for best fiiting masks in order to assign directions assuming 2/6 fold symmetry. 
                % First looking for pairs of particles that are closer than the threshold. 
                % Then, finding particles best fitting with the initial masks, optimizing masks with respect to these particles and]
                % keeping good enough fits (according to the chosen parameters).
                
                cla(app.UIAxes2)
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                app.InstructionsTextArea.Value='Computing mask fitiing.';
                [a]=app.hullHexa(1);
                [b]=app.hullHexa(2);
                [c]=app.hullHexa(3);
                % Finding pairs of particles with distance smaller than "cut"  
                cut=max(a,sqrt((b/2)^2+c^2))*1.25;
                cent=app.centers;
                pairs=NaN(8*length(cent),2);
                indP=1;
                for i=1:size(app.centers,1)-1
                    dist=sqrt((app.centers(i+1:end,1)-app.centers(i,1)).^2+(app.centers(i+1:end,2)-app.centers(i,2)).^2);
                    ind=find(dist<cut)+i;
                    lInd=length(ind);
                    if lInd>0
                        pairs(indP:indP+lInd-1,:)=[i.*ones(length(ind),1),ind];
                        indP=indP+lInd;
                    end
                end
                pairs=pairs(~isnan(pairs(:,1)),:);
                s=size(pairs,1);
                cutoff=mean(app.radii);
                eCutoff=app.MultiplicativehexagonalEditField.Value*(-cutoff^2+(cutoff/app.FractionhexagonalEditField.Value)^2);
                hu=app.hullHexa;
                % Creating initial locations for hulls which have lower
                % energy than "eCutoff" that are parallel to the found
                % pairs
                coorIniList=nan(2*s,3);
                parpool('local', maxNumCompThreads);
                pairs=parallel.pool.Constant(pairs);
                cent=parallel.pool.Constant(app.centers);
                s=size(pairs.Value,1);
                coorIniBR=[a/2,b/2];
                parfor i=1:s
                    ang=atan2(cent.Value(pairs.Value(i,2),2)-cent.Value(pairs.Value(i,1),2),cent.Value(pairs.Value(i,2),1)-cent.Value(pairs.Value(i,1),1));                    
                    M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                    coorIni=(M*coorIniBR')';
                    coorIni=coorIni+cent.Value(pairs.Value(i,1),:);
                    iniE=enerHullHexaExternal([coorIni,ang],cutoff,hu,cent.Value);
                    if iniE<eCutoff
                        coorIniList(i,:)=[coorIni,ang];
                    end
                end
                coorIniBR2=[a/2,-b/2];
                parfor i=1:s
                    ang=atan2(cent.Value(pairs.Value(i,2),2)-cent.Value(pairs.Value(i,1),2),cent.Value(pairs.Value(i,2),1)-cent.Value(pairs.Value(i,1),1));
                    M = [cos(ang) -sin(ang); sin(ang) cos(ang)];
                    coorIni=(M*coorIniBR2')';
                    coorIni=coorIni+cent.Value(pairs.Value(i,1),:);
                    iniE=enerHullHexaExternal([coorIni,ang],cutoff,hu,cent.Value);
                    if iniE<eCutoff
                        coorIniList(i+s,:)=[coorIni,ang];
                    end
                end
                coorIniList=coorIniList(~isnan(coorIniList(:,1)),:);
                coorIniList=parallel.pool.Constant(coorIniList);
                % Optimizing initial conditions by finding the particles
                % associated with the initial guess and taking the mean
                % center and angle.
                if isempty(coorIniList)==false
                    indPerCentTemp=NaN(size(coorIniList.Value,1),6);
                    parfor i=1:size(coorIniList.Value,1)
                        minList=NaN(1,6);
                        centHu=coorIniList.Value(i,1:2);
                        ang=coorIniList.Value(i,3);        
                        p1=centHu+(a/2+c)*[cos(ang),sin(ang)];
                        dist=sqrt((cent.Value(:,1)-p1(1)).^2+(cent.Value(:,2)-p1(2)).^2);
                        [~,minInd]=min(dist);
                        minList(1)=minInd;       
                        p2=centHu+(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent.Value(:,1)-p2(1)).^2+(cent.Value(:,2)-p2(2)).^2);
                        [~,minInd]=min(dist);
                        minList(2)=minInd;         
                        p3=centHu-(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent.Value(:,1)-p3(1)).^2+(cent.Value(:,2)-p3(2)).^2);
                        [~,minInd]=min(dist);
                        minList(3)=minInd;         
                        p4=centHu-(a/2+c)*[cos(ang),sin(ang)];
                        dist=sqrt((cent.Value(:,1)-p4(1)).^2+(cent.Value(:,2)-p4(2)).^2);
                        [~,minInd]=min(dist);
                        minList(4)=minInd;        
                        p5=centHu-(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent.Value(:,1)-p5(1)).^2+(cent.Value(:,2)-p5(2)).^2);
                        [~,minInd]=min(dist);
                        minList(5)=minInd;         
                        p6=centHu+(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                        dist=sqrt((cent.Value(:,1)-p6(1)).^2+(cent.Value(:,2)-p6(2)).^2);
                        [~,minInd]=min(dist);
                        minList(6)=minInd; 
                        if length(unique(minList))==6
                            indPerCentTemp(i,:)=minList;
                        end
                    end
                    indPerCentTemp=indPerCentTemp(~isnan(indPerCentTemp(:,1)),:);
                    indPerCentTemp2=parallel.pool.Constant(indPerCentTemp);
                    coorIniList1=zeros(size(indPerCentTemp2.Value,1),3);
                    minEList=zeros(size(indPerCentTemp2.Value,1),1);
                    parfor i=1:size(indPerCentTemp,1)
                        p=[cent.Value(indPerCentTemp2.Value(i,1),:);cent.Value(indPerCentTemp2.Value(i,2),:);cent.Value(indPerCentTemp2.Value(i,3),:);cent.Value(indPerCentTemp2.Value(i,4),:);cent.Value(indPerCentTemp2.Value(i,5),:);cent.Value(indPerCentTemp2.Value(i,6),:)];
                        arg=((a+2*c)/(2*sqrt(a^2+b^2))*(p(1,2)-p(4,2))+(p(6,2)-p(5,2)+p(2,2)-p(3,2))*cos(atan(b/a))+(-p(6,1)-p(5,1)+p(2,1)+p(3,1))*sin(atan(b/a)))/((a+2*c)/(2*sqrt(a^2+b^2))*(p(1,1)-p(4,1))+(p(6,2)+p(5,2)-p(2,2)-p(3,2))*sin(atan(b/a))+(p(6,1)-p(5,1)+p(2,1)-p(3,1))*cos(atan(b/a)));
                        ang=atan(arg);
                        coor1=[mean(p(:,1)),mean(p(:,2)),ang];
                        minETry=enerHullHexaExternal(coor1,cutoff,hu,cent.Value(indPerCentTemp2.Value(i,:),:));
                        coorIniList1(i,:)=coor1;
                        minEList(i)=minETry;
                    end

                    delete(gcp('nocreate'));
                    % Keeping unique fits, sorting by energy and apply keepUniqueMinHexa.
                    [~,~,J] = uniquetol(coorIniList1, 1e-4, 'ByRows', true);
                    firstidx = sort(accumarray(J,(1:length(J))',[],@min));
                    coorIniList1 = coorIniList1(firstidx,:);
                    minEList=minEList(firstidx);
                    indPerCentTemp=indPerCentTemp(firstidx,:);
                    [minEList,I]=sort(minEList);
                    coorIniList1=coorIniList1(I,:);
                    indPerCentTemp=indPerCentTemp(I,:);
                    app.indPerCentHexaNotSorted=indPerCentTemp;
                    app.coorOfMasksHexaNotSorted=coorIniList1;
                    app.eofNotSortedMasksHexa=minEList;
                    if app.SymmetryhexagonSwitch.Value=='2'
                        app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)<0,3)=app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)<0,3)+pi;
                        app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)>pi,3)=app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)>pi,3)-pi;
                    else
                        app.coorOfMasksHexaNotSorted(:,3)=mod(app.coorOfMasksHexaNotSorted(:,3),pi/3);
                        app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)<0,3)=app.coorOfMasksHexaNotSorted(app.coorOfMasksHexaNotSorted(:,3)<0,3)+pi/3;
                    end
                    app.coorOfMasksHexa=app.coorOfMasksHexaNotSorted;
                    app.eOfMasksHexa=app.eofNotSortedMasksHexa;
                    [ind2] = keepUniqueMinHexa(app);
                    app.coorOfMasksHexa= app.coorOfMasksHexa(ind2==1,:);
                    app.eOfMasksHexa=app.eOfMasksHexa(ind2==1);
                    app.indPerCentHexa=app.indPerCentHexaNotSorted(ind2==1,:);
                    app.InstructionsTextArea.Value='Done.';
                    plotDirectionColor(app,app.UIAxes2,1)
                else
                    app.InstructionsTextArea.Value='No initial masks below minimal energy. Try to change the parameters.';
                    delete(gcp('nocreate'));
                end
            end

            function filtration(app,diskFact,fracKept,factStd,per,fact1,fact2)
                % Applying filtration for the detected particles. Creating a disk filter of
                % the mean radius of the detected particles times diskFact, then computes 
                % the metric value by filterNormalized, narmalize it per the area of the detected 
                % particle and keeps only particles which have a metric higher than fracKept of 
                % the metric at the per percentile.

                % The input is:
                % diskFact - The multiplicative factor for the radius of
                % the disk filter.
                % fracKept - The fraction of the cutoff metric for the thresholding. 
                % factStd - The power of the standard deviation part of filterNormalized.
                % per - The percentile of the metric to take into
                % consideration in the thresholding.
                % fact1 - The power of the minimal pixel value in filterNormalized.
                % fact2 - The power of the maximal pixel value in filterNormalized.
                
                if isempty(app.radii)==false
                    % Creating a disk filter of the mean radius.
                    meanR=mean(app.radii);
                    diskR=round(meanR*diskFact);
                    filt=fspecial('disk',diskR);
                    v=app.Switch_4.Value;
                    v=convertCharsToStrings(v);
                    % Padding of the array according to the particles
                    % polarity (dark or bright).
                    im=app.imageP;
                    if v==['Dark']
                        im=256*ones(size(im,1),size(im,2))-double(im);
                        if size(app.segmentationMask)==size(im)
                            im(app.segmentationMask)=0;
                        end
                        im = padarray(double(im),[diskR+2,diskR+2],0,'both'); 
                    else
                        if size(app.segmentationMask)==size(im)
                            im(app.segmentationMask)=0;
                        end
                        im = padarray(double(im),[diskR+2,diskR+2],0,'both');
                    end
                    % Computing the score of each particle and filtration.
                    cent=app.centers;
                    met=zeros(size(cent,1),1);
                    for i=1:size(cent,1)
                        coorIniLoc=cent(i,:);
                        iniLocation=(coorIniLoc(:)-floor(coorIniLoc(:)))';
                        iniLocation=iniLocation+diskR+2;
                        imCut=double(im(floor(coorIniLoc(2))+1:floor(coorIniLoc(2))+2*diskR+3,floor(coorIniLoc(1))+1:floor(coorIniLoc(1))+2*diskR+3));
                        [metVal]=filterNormalized(app,iniLocation,imCut,filt,diskR,factStd,fact1,fact2);
                        met(i,1)=-metVal;
                    end
                    met=met./app.radii.^2;
                    app.particlesMetric=met;
                    cutMet=prctile(met,per);
                    indMet=met>(fracKept*cutMet);
                    app.centers=app.centers(indMet,:);
                    app.radii=app.radii(indMet);
                    app.particlesMetric=app.particlesMetric(indMet);
                end
            end

            function s = filterNormalized(~,cent,im,filt,lF,factStd,fact1,fact2)
                % Computing the filter "score" for particle filtration.
                % Takes into consideration fractions of pixels.

                % The input is:
                % cent - The centering (x,y) of the filter.
                % im - The relevant part of the image for the computation. 
                % filt - The circular disk filter.
                % lF - The dimensions of the filter as (2*lF+1)*(2*lF+1).
                % fracKept - The fraction of the cutoff metric for the thresholding. 
                % factStd - The power of the standard deviation for a division factor of s.
                % fact1 - The power of the minimal pixel value for a multiplicative factor of s.
                % fact2 - The power of the maximal pixel value for a division factor of s.
                % The output is:
                % s - The computed score.

                indF=floor(cent-1/2);
                fracs=indF+1-(cent-1/2);
                lff=round(lF/2);
                s=-fracs(1)*fracs(2)*sum(sum(im(indF(2)-lF:indF(2)+lF,indF(1)-lF:indF(1)+lF).*filt));
                s=s-(1-fracs(1))*(1-fracs(2))*sum(sum(im(indF(2)-lF+1:indF(2)+lF+1,indF(1)-lF+1:indF(1)+lF+1).*filt));
                s=s-(1-fracs(1))*(fracs(2))*sum(sum(im(indF(2)-lF:indF(2)+lF,indF(1)-lF+1:indF(1)+lF+1).*filt));
                s=s-(fracs(1))*(1-fracs(2))*sum(sum(im(indF(2)-lF+1:indF(2)+lF+1,indF(1)-lF:indF(1)+lF).*filt));
                s=s*(min(min(im(indF(2)-lff:indF(2)+lff,indF(1)-lff:indF(1)+lff))))^fact1/(max(max(im(indF(2)-lff:indF(2)+lff,indF(1)-lff:indF(1)+lff))))^fact2/std2(im(indF(2)-lff:indF(2)+lff,indF(1)-lff:indF(1)+lff))^factStd;
           end 
    end    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: LoadNewImageButton
        function LoadNewImageButtonPushed(app, event)
            % Loading a new image browsed by the user to all axis in the main
            % page. Converts to gray format.  
            try
                filter = {'*.png;*.jpeg;*.jpg;*.raw;*.gif','Image files'};
                [file, path] = uigetfile(filter);
                imr=imread([path,file]);
                app.imageP=im2gray(imr);
                if size(imr,3)==3
                    app.imageP=rgb2gray(imr);
                end
                cla(app.UIAxes)
                cla(app.UIAxes_2)
                cla(app.UIAxes_3)
                app.imageOri=app.imageP;
                [app.yHigh,app.xHigh]=size(app.imageP);
                imshow(app.imageOri,'Parent',app.UIAxes)
                axis(app.UIAxes,"image")
                imshow(app.imageP,'Parent',app.UIAxes_2)
                axis(app.UIAxes_2,"image")
                imshow(app.imageP,'Parent',app.UIAxes_3)
                axis(app.UIAxes_3,"image")
                app.XHighEditField.Value=app.xHigh;
                app.YHighEditField.Value=app.yHigh;
            catch
                errordlg(['No image was loaded.'],'Load Error!');
                return;
            end
            app.UIFigure.Visible='off';
            app.UIFigure.Visible = 'on';
        end

        % Button pushed function: CropButton
        function CropButtonPushed(app, event)
            % Cropping the analyzed image and updating the relevant axis
            % and fields. 
            xL=app.XLowEditField.Value;
            yL=app.YLowEditField.Value;
            xH=app.XHighEditField.Value;
            yH=app.YHighEditField.Value;
            if xL<=xH && yL<=yH && xH<=app.xHigh && yH<=app.yHigh
                app.imageP=app.imageP(yL:yH,xL:xH);
                app.imageOri=app.imageOri(yL:yH,xL:xH);
                [app.yHigh,app.xHigh]=size(app.imageP);
                cla(app.UIAxes)
                cla(app.UIAxes_2)
                cla(app.UIAxes_3)
                imshow(app.imageOri,'Parent',app.UIAxes)
                axis(app.UIAxes,"image")
                imshow(app.imageP,'Parent',app.UIAxes_2)
                axis(app.UIAxes_2,"image")
                imshow(app.imageP,'Parent',app.UIAxes_3)
                axis(app.UIAxes_3,"image")
            end
            app.XHighEditField.Value=app.xHigh;
            app.YHighEditField.Value=app.yHigh;
            app.XLowEditField.Value=1;
            app.YLowEditField.Value=1;
        end

        % Button pushed function: ImAdjustButton
        function ImAdjustButtonPushed(app, event)
            % Adjusting the contrast of the image using the "imadjust" function.
            if isempty(app.segmentationMask) && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                app.imageP(app.segmentationMask)=nan;
            end
            app.imageP=imadjust(app.imageP);
            if isempty(app.segmentationMask)==false && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                vIm=app.BackgroundcolorDropDown.Value;
                vIm=convertCharsToStrings(vIm);
                if vIm==['White']
                    app.imageP(app.segmentationMask)=255;
                else
                    app.imageP(app.segmentationMask)=0;
                end
            end
            cla(app.UIAxes_2)
            cla(app.UIAxes_3)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image")
        end

        % Button pushed function: ResetButton
        function ResetButtonPushed(app, event)
            % Reseting the image to the original (cropped) image.
            app.imageP=app.imageOri;
            cla(app.UIAxes_2)
            cla(app.UIAxes_3)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image")
        end

        % Button pushed function: HistEqButton
        function HistEqButtonPushed(app, event)
            % Adjusting the contrast of the image using histeq.
            if isempty(app.segmentationMask) && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                app.imageP(app.segmentationMask)=nan;
            end
            app.imageP=histeq(app.imageP);
            if isempty(app.segmentationMask)==false && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                vIm=app.BackgroundcolorDropDown.Value;
                vIm=convertCharsToStrings(vIm);
                if vIm==['White']
                    app.imageP(app.segmentationMask)=255;
                else
                    app.imageP(app.segmentationMask)=0;
                end
            end
            cla(app.UIAxes_2)
            cla(app.UIAxes_3)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image")
        end

        % Button pushed function: AdaptHistEqButton
        function AdaptHistEqButtonPushed(app, event)
            % Adjusting the contrast of the image using adapthisteq.
            if isempty(app.segmentationMask) && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                app.imageP(app.segmentationMask)=nan;
            end
            app.imageP=adapthisteq(app.imageP);
            if isempty(app.segmentationMask)==false && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                vIm=app.BackgroundcolorDropDown.Value;
                vIm=convertCharsToStrings(vIm);
                if vIm==['White']
                    app.imageP(app.segmentationMask)=255;
                else
                    app.imageP(app.segmentationMask)=0;
                end
            end
            cla(app.UIAxes_2)
            cla(app.UIAxes_3)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image") 
        end

        % Button pushed function: FindCentersButton
        function FindCentersButtonPushed(app, event)
            % Finding particles' locations and radii using Hough transform with
            % user chosen parameters. Allows scanning of parameters. Cleans
            % overlaps and aplies filtration twice with different
            % parameters. The user can change the filtration parameters
            % here (but not through GUI).
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            v=app.Switch_4.Value;
            v=convertCharsToStrings(v);
            if v==['Bright']
                v='bright';
            elseif v==['Dark']
                v='dark';
            end
            app.centers=[];
            app.radii=[];
            app.particlesMetric=[];
            v2=app.ThresholdDropDown.Value;
            v2=convertCharsToStrings(v2);           
            if v2==['Auto threshold']
                [app.centers, app.radii,app.particlesMetric] = imfindcircles(app.imageP,[app.MinradiusEditField.Value app.MaxradiusEditField.Value],'ObjectPolarity',v,'Method',app.particlesFindingMethod,'Sensitivity',app.SensitivityEditField.Value);
            elseif v2==['Manual']
                [app.centers, app.radii,app.particlesMetric] = imfindcircles(app.imageP,[app.MinradiusEditField.Value app.MaxradiusEditField.Value],'ObjectPolarity',v,'Method',app.particlesFindingMethod,'Sensitivity',app.SensitivityEditField.Value,'EdgeThreshold',app.ManualinitialEditField.Value);
            elseif v2==['Scan']
                [app.centers, app.radii,app.particlesMetric] = imfindcircles(app.imageP,[app.MinradiusEditField.Value app.MaxradiusEditField.Value],'ObjectPolarity',v,'Method',app.particlesFindingMethod,'Sensitivity',app.SensitivityEditField.Value);
                scanVec=app.ManualinitialEditField.Value:app.GranularityEditField.Value:app.ManualmaxEditField.Value;
                for i=1:length(scanVec)
                    [cent,r,met]=imfindcircles(app.imageP,[app.MinradiusEditField.Value app.MaxradiusEditField.Value],'ObjectPolarity',v,'Method',app.particlesFindingMethod,'Sensitivity',app.SensitivityEditField.Value,'EdgeThreshold',scanVec(i));
                    app.centers=[app.centers;cent];
                    app.radii=[app.radii;r];
                    app.particlesMetric=[app.particlesMetric;met];
                end  
            end
            if isempty(app.radii)==false
                matOrd=[app.centers,app.radii, app.particlesMetric];
                matOrd=sortrows(matOrd,4,"descend");
                app.centers=matOrd(:,1:2);
                app.radii=matOrd(:,3);
                app.particlesMetric=matOrd(:,4);
                % Applying filtration here. In the defult the parameters are 
                % filtration(app,0.5,0.15,4,90,0,0);filtration(app,1,0.33,0,90,0,0);
                % such that the first is looking for high variance in
                % smaller radius to look for out of centers out of
                % particles (detecting edges of neighboring particles near
                % the gap) and the second is for removing the worst fits.               
                filtration(app,0.5,0.15,4,90,0,0);
                filtration(app,1,0.33,0,90,0,0);
                [app.centers,app.radii,app.particlesMetric]=overlapCleaning(app,app.centers,app.radii,app.particlesMetric);
                cla(app.UIAxes_3)
                app.imageP=app.imageP;
                imshow(app.imageP,'Parent',app.UIAxes_3)
                axis(app.UIAxes_3,"image")
                hold(app.UIAxes_3,'on')
                try
                    viscircles(app.UIAxes_3,app.centers, app.radii,'EdgeColor','b');
                    close(figure(1))
                    hold(app.UIAxes_3,'on')
                    scatter(app.UIAxes_3,app.centers(:,1),app.centers(:,2),'.red')
                catch
                    errordlg('No Particles found');
                end
                app.ParticlesedgesCheckBox.Value=true;
                app.ParticlescentersCheckBox_2.Value=true;
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: UpdatelayerssButton
        function UpdatelayerssButtonPushed(app, event)
            % Plotting a layered image in the right axes of the main panel
            % with user specified layers.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            cla(app.UIAxes_3)
            app.imageP=app.imageP;
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image") 
            hold(app.UIAxes_3,'on')
            if app.ParticlesedgesCheckBox.Value==true && isempty(app.centers)==false
                viscircles(app.UIAxes_3,app.centers, app.radii,'EdgeColor','b');
                close(figure(1))
            end
            hold(app.UIAxes_3,'on')
            if app.ParticlescentersCheckBox_2.Value==true && isempty(app.centers)==false
                scatter(app.UIAxes_3,app.centers(:,1),app.centers(:,2),'.red')
            end
            hold(app.UIAxes_3,'on')
            if app.HexagonalboundaryCheckBox.Value==true && isempty(app.coorOfMasksHexa)==false
                for i=1:length(app.coorOfMasksHexa)
                    hexaMin=convertToHexa(app,app.hullHexa,app.coorOfMasksHexa(i,1:2),app.coorOfMasksHexa(i,3));
                    pgonMin = polyshape(hexaMin(:,1),hexaMin(:,2));
                    plot(app.UIAxes_3,pgonMin,'FaceColor','none','EdgeColor','b','LineWidth',2) 
                end
            end
            hold(app.UIAxes_3,'on')
            if app.HexagonalorientationsCheckBox.Value==true && isempty(app.coorOfMasksHexa)==false
               plotDirectionColor(app,app.UIAxes_3,1)
            end
            hold(app.UIAxes_3,'on')
            if app.RectangularboundaryCheckBox.Value==true && isempty(app.coorOfMasksRect)==false
                for i=1:length(app.coorOfMasksRect)
                    hexaMin=convertToRect(app,app.hullRect,app.coorOfMasksRect(i,1:2),app.coorOfMasksRect(i,3));
                    pgonMin = polyshape(hexaMin(:,1),hexaMin(:,2));
                    plot(app.UIAxes_3,pgonMin,'FaceColor','none','EdgeColor','b','LineWidth',2) 
                end
            end
            hold(app.UIAxes_3,'on')
            if app.RectangularorientationsCheckBox.Value==true && isempty(app.coorOfMasksRect)==false
               plotDirectionColor(app,app.UIAxes_3,2)
            end
            hold(app.UIAxes_3,'on')
            if app.TriangularboundaryCheckBox.Value==true && isempty(app.coorOfMasksTri)==false
                for i=1:length(app.coorOfMasksTri)
                    hexaMin=convertToTri(app,app.hullTri,app.coorOfMasksTri(i,1:2),app.coorOfMasksTri(i,3));
                    pgonMin = polyshape(hexaMin(:,1),hexaMin(:,2));
                    plot(app.UIAxes_3,pgonMin,'FaceColor','none','EdgeColor','b','LineWidth',2) 
                end
            end
            hold(app.UIAxes_3,'on')
            if app.TriangularorientationsCheckBox.Value==true && isempty(app.coorOfMasksTri)==false
               plotDirectionColor(app,app.UIAxes_3,3)
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PickparticlesformaskhexagonButton
        function PickparticlesformaskhexagonButtonPushed(app, event)
            % Finding 6 particles for hexagonal hull creation by picking the
            % closest particles to the locations clicked-on by the user.
            hold(app.UIAxes2,'on')
            hullT=zeros(6,2);
            if isempty(app.centers)==false
                for i=1:6
                    if i==1
                        app.InstructionsTextArea.Value='Please click as close to a "tip" particle as you can assuming that the long axis is vertical (in case of 2-fold symmetry).';
                    else
                        app.InstructionsTextArea.Value='Please choose next particle in a clockwise direction!';
                    end
                    fhv = app.UIFigure.HandleVisibility;
                    app.UIFigure.HandleVisibility = 'callback';
                    set(0, 'CurrentFigure', app.UIFigure)
                    [x1,y1]=ginput(1);
                    app.UIFigure.HandleVisibility = fhv;
                    dist=sqrt((app.centers(:,1)-x1).^2+(app.centers(:,2)-y1).^2);
                    [~,minInd]=min(dist);
                    hullT(i,1:2)=[app.centers(minInd,1),app.centers(minInd,2)];
                    viscircles(app.UIAxes2,[app.centers(minInd,1),app.centers(minInd,2)], app.radii(minInd));
                    close(figure(1))
                end
                app.hullTempHexa=hullT;
                app.InstructionsTextArea.Value='Thanks :)';
            else
                app.InstructionsTextArea.Value='Please find the locations of the particles in main tab first.';
            end
        end

        % Button pushed function: CreatemaskhexagonButton
        function CreatemaskhexagonButtonPushed(app, event)
            % Creating a hexagonal hull using the chosen particles and plotting it
            % on the image.
            if isempty(app.hullTempHexa)==false
                app.hullHexa=createHullHexa(app,app.hullTempHexa);
                iniCent=mean(app.hullTempHexa,1);
                iniAng=atan2(app.hullTempHexa(4,2)-app.hullTempHexa(1,2),app.hullTempHexa(4,1)-app.hullTempHexa(1,1));
                hullForPlot=convertToHexa(app,app.hullHexa,iniCent,iniAng);
                pgon = polyshape(hullForPlot(:,1),hullForPlot(:,2));
                cla(app.UIAxes2)
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                plot(app.UIAxes2,pgon)
            else
                app.InstructionsTextArea.Value='Please find centers for mask creation first.';
            end
        end

        % Button pushed function: IdentifyorientationshexagonButton
        function IdentifyorientationshexagonButtonPushed(app, event)
            % Looking for best fiiting hulls in order to assign directions assuming hexagonal symmetry. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.hullHexa)==false
                 v=app.ParallelcomputationSwitch.Value;
                 v=convertCharsToStrings(v);
                 if v==['Off']
                      identifyHexa(app)
                 else
                      identifyHexaParallel(app)
                 end
            else
                app.InstructionsTextArea.Value='Please create a mask first.';
            end 
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: SaveProjectButton
        function SaveProjectButtonPushed(app, event)
            % Saveing the project as a mat file.
            filter = {'*.mat'};
            [file, path] = uiputfile(filter);
            if isempty(file)==true
                return;
            else
                try
                    imageP=app.imageP;
                    xHigh=app.xHigh;
                    yHigh=app.yHigh;
                    imageOri=app.imageOri;
                    centers=[];
                    radii=[];
                    if isempty(app.centers)==false
                        centers=app.centers;
                        radii=app.radii;
                    end
                    hullTempHexa=[];
                    if isempty(app.hullTempHexa)==false
                        hullTempHexa=app.hullTempHexa;
                    end
                    hullHexa=[];
                    if isempty(app.hullHexa)==false
                        hullHexa=app.hullHexa;
                    end
                    coorOfMasksHexa=[];
                    coorOfMasksHexaNotSorted=[];
                    eOfMasksHexa=[];
                    eofNotSortedMasksHexa=[];
                    if isempty(app.coorOfMasksHexa)==false
                        coorOfMasksHexa=app.coorOfMasksHexa;
                        coorOfMasksHexaNotSorted=app.coorOfMasksHexaNotSorted;
                        eOfMasksHexa=app.eOfMasksHexa;
                        eofNotSortedMasksHexa=app.eofNotSortedMasksHexa;
                    end
                    indPerCentHexa=[];
                    if isempty(app.indPerCentHexa)==false
                        indPerCentHexa=app.indPerCentHexa;
                    end
                    directions=[];
                    if isempty(app.directions)==false
                        directions=app.directions;
                    end
                    hullTempRect=[];
                    if isempty(app.hullTempRect)==false
                        hullTempRect=app.hullTempRect;
                    end
                    hullRect=[];
                    if isempty(app.hullTempRect)==false
                        hullRect=app.hullRect;
                    end
                    coorOfMasksRectNotSorted=[];
                    if isempty(app.coorOfMasksRectNotSorted)==false
                        coorOfMasksRectNotSorted=app.coorOfMasksRectNotSorted;
                    end
                    eofNotSortedMasksRect=[];
                    if isempty(app.eofNotSortedMasksRect)==false
                        eofNotSortedMasksRect=app.eofNotSortedMasksRect;
                    end
                    coorOfMasksRect=[];
                    if isempty(app.coorOfMasksRect)==false
                        coorOfMasksRect=app.coorOfMasksRect;
                    end
                    eOfMasksRect=[];
                    if isempty(app.eOfMasksRect)==false
                        eOfMasksRect=app.eOfMasksRect;
                    end
                    minRad=app.MinradiusEditField.Value;
                    maxRad=app.MaxradiusEditField.Value;
                    sens=app.SensitivityEditField.Value;
                    sens2=app.ManualinitialEditField.Value;
                    sens3=app.ManualmaxEditField.Value;
                    gran=app.GranularityEditField.Value;
                    mul1=app.MultiplicativehexagonalEditField.Value;
                    cut1=app.FractionhexagonalEditField.Value;
                    mul2=app.MultiplicativerectangularEditField.Value;
                    cut2=app.FractionrectangularEditField.Value;
                    mul3=app.MultiplicativetriangularEditField.Value;
                    cut3=app.FractiontriangularEditField.Value;
                    v=app.Switch_4.Value;
                    v2=app.ThresholdDropDown.Value;
                    hullTempTri=[];
                    if isempty(app.hullTempTri)==false
                        hullTempTri=app.hullTempTri;
                    end
                    hullTri=[];
                    if isempty(app.hullTri)==false
                        hullTri=app.hullTri;
                    end
                    coorOfMasksTriNotSorted =[];
                    if isempty(app.coorOfMasksTriNotSorted)==false
                        coorOfMasksTriNotSorted =app.coorOfMasksTriNotSorted;
                    end
                    eofNotSortedMasksTri =[];
                    if isempty(app.eofNotSortedMasksTri)==false
                        eofNotSortedMasksTri=app.eofNotSortedMasksTri;
                    end
                    coorOfMasksTri =[];
                    if isempty(app.coorOfMasksTri)==false
                        coorOfMasksTri=app.coorOfMasksTri;
                    end
                    eOfMasksTri =[];
                    if isempty(app.eOfMasksTri)==false
                        eOfMasksTri=app.eOfMasksTri;
                    end
                    minRadOver=1.4;
                    if isempty(app.minRadOver)==false
                        minRadOver=app.minRadOver;
                    end
                    indPerCentHexaNotSorted =[];
                    if isempty(app.indPerCentHexaNotSorted)==false
                        indPerCentHexaNotSorted=app.indPerCentHexaNotSorted;
                    end
                    indPerCentRectNotSorted =[];
                    if isempty(app.indPerCentRectNotSorted)==false
                        indPerCentRectNotSorted=app.indPerCentRectNotSorted;
                    end
                    indPerCentTriNotSorted =[];
                    if isempty(app.indPerCentTriNotSorted)==false
                        indPerCentTriNotSorted=app.indPerCentTriNotSorted;
                    end
                    segmentationMask=[];
                    if isempty(app.segmentationMask)==false
                        segmentationMask=app.segmentationMask;
                    end
                    particlesFindingMethod=app.particlesFindingMethod;
                    particlesMetric=app.particlesMetric;
                    indPerCentRect =[];
                    if isempty(app.indPerCentRect)==false
                        indPerCentRect=app.indPerCentRect;
                    end
                    indPerCentTri =[];
                    if isempty(app.indPerCentTri)==false
                        indPerCentTri=app.indPerCentTri;
                    end
                    save(fullfile(path,file),'imageP','xHigh','yHigh','imageOri','centers','radii','hullTempHexa','hullHexa','coorOfMasksHexa','coorOfMasksHexaNotSorted','eOfMasksHexa','eofNotSortedMasksHexa','indPerCentHexa','directions','hullTempRect','hullRect','coorOfMasksRectNotSorted','eofNotSortedMasksRect','coorOfMasksRect','eOfMasksRect','minRad','maxRad','sens','mul1','cut1','mul2','cut2','v','v2','hullTempTri','hullTri','coorOfMasksTriNotSorted','eofNotSortedMasksTri','coorOfMasksTri','eOfMasksTri','mul3','cut3','minRadOver','indPerCentHexaNotSorted','indPerCentRectNotSorted','indPerCentTriNotSorted','sens2','segmentationMask','particlesFindingMethod','sens3','gran','particlesMetric','indPerCentRect','indPerCentTri','-mat');
                catch
                    errordlg('There was a problem saving the file','Saving Error!');
                    return;
                end
            end
            app.UIFigure.Visible='off';
            app.UIFigure.Visible = 'on';
        end

        % Button pushed function: LoadProjectButton
        function LoadProjectButtonPushed(app, event)
            % Loading a project from a saved mat file. The function is
            % built this way to upload projects saved by older versions of
            % this app.
            filter = {'*.mat'};
            [file, path] = uigetfile(filter);
            if file==0
                return;
            end
            try
                d=load(fullfile(path,file),'-mat');
                app.imageOri=[];
                app.centers=[];
                app.radii=[];
                app.coorOfMasksHexa=[];
                app.coorOfMasksHexaNotSorted=[];
                app.eOfMasksHexa=[];
                app.eofNotSortedMasksHexa=[];
                app.imageP=d.imageP;
                app.xHigh=d.xHigh;
                app.yHigh=d.yHigh;
                app.XHighEditField.Value=d.xHigh;
                app.YHighEditField.Value=d.yHigh;
                app.imageOri=d.imageOri;
                app.centers=d.centers;
                app.radii=d.radii;
                try
                    app.hullTempHexa=d.hullTempHexa;
                    app.hullHexa=d.hullHexa;
                catch
                    app.hullTempHexa=[];
                    app.hullHexa=[];
                end
                try
                    app.coorOfMasksHexa=d.coorOfMasksHexa;
                    app.coorOfMasksHexaNotSorted=d.coorOfMasksHexaNotSorted;
                    app.eOfMasksHexa=d.eOfMasksHexa;
                    app.eofNotSortedMasksHexa=d.eofNotSortedMasksHexa;
                catch
                    app.coorOfMasksHexa=d.coorOfHulls;
                    app.coorOfMasksHexaNotSorted=d.coorOfHullsNotSorted;
                    app.eOfMasksHexa=d.eOfHulls;
                    app.eofNotSortedMasksHexa=d.eofNotSortedHulls;
                end
                cla(app.UIAxes)
                imshow(app.imageOri,'Parent',app.UIAxes)
                axis(app.UIAxes,"image")
                cla(app.UIAxes_2)
                imshow(app.imageP,'Parent',app.UIAxes_2)
                axis(app.UIAxes_2,"image")
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.indPerCentHexa=[];
                app.directions=[];
                try
                    app.indPerCentHexa=d.indPerCent;
                catch
                    app.indPerCentHexa=d.indPerCentHexa;
                end
                app.directions=d.directions;
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.hullTempRect=[];
                app.hullRect=[];
                app.coorOfMasksRectNotSorted=[];
                app.eofNotSortedMasksRect=[];
                app.coorOfMasksRect=[];
                app.eOfMasksRect=[];
                app.hullTempRect=d.hullTempRect;
                app.hullRect=d.hullRect;
                try 
                    app.coorOfMasksRectNotSorted=d.coorOfMasksRectNotSorted;
                    app.eofNotSortedMasksRect=d.eofNotSortedMasksRect;
                    app.coorOfMasksRect=d.coorOfMasksRect;
                    app.eOfMasksRect=d.eOfMasksRect;
                catch
                    app.coorOfMasksRectNotSorted=d.coorOfHullsRectNotSorted;
                    app.eofNotSortedMasksRect=d.eofNotSortedHullsRect;
                    app.coorOfMasksRect=d.coorOfHullsRect;
                    app.eOfMasksRect=d.eOfHullsRect;
                end
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.MinradiusEditField.Value=d.minRad;
                app.MaxradiusEditField.Value=d.maxRad;
                app.SensitivityEditField.Value=d.sens;
                app.MultiplicativehexagonalEditField.Value=d.mul1;
                app.FractionhexagonalEditField.Value=d.cut1;
                app.MultiplicativerectangularEditField.Value=d.mul2;
                app.FractionrectangularEditField.Value=d.cut2;
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.ManualinitialEditField.Value=d.sens2;
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.ThresholdDropDown.Value=d.v2;
                app.Switch_4.Value=d.v;
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.hullTempTri=[];
                app.hullTri=[];
                app.coorOfMasksTriNotSorted=[];
                app.eofNotSortedMasksTri=[];
                app.coorOfMasksTri=[];
                app.eOfMasksTri=[];
                app.hullTempTri=d.hullTempTri;
                app.hullTri=d.hullTri;
                app.MultiplicativetriangularEditField.Value=d.mul3;
                app.FractiontriangularEditField.Value=d.cut3;
                try
                    app.coorOfMasksTriNotSorted=d.coorOfHullsTriNotSorted;
                    app.eofNotSortedMasksTri=d.eofNotSortedHullsTri;
                    app.coorOfMasksTri=d.coorOfHullsTri;
                    app.eOfMasksTri=d.eOfHullsTri;       
                catch
                    app.coorOfMasksTriNotSorted=d.coorOfMasksTriNotSorted;
                    app.eofNotSortedMasksTri=d.eofNotSortedMasksTri;
                    app.coorOfMasksTri=d.coorOfMasksTri;
                    app.eOfMasksTri=d.eOfMasksTri;
                end
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.minRadOver=1.4;
                app.minRadOver=d.minRadOver;
                app.MindistancemeanradiusEditField.Value=app.minRadOver;
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                try
                    app.indPerCentHexaNotSorted=d.indPerCentHexaNotSorted;
                catch
                    app.indPerCentHexaNotSorted=d.indPerCentNotSorted;
                end
                app.indPerCentRectNotSorted=d.indPerCentRectNotSorted;
                app.indPerCentTriNotSorted=d.indPerCentTriNotSorted;
                app.indPerCentRect=d.indPerCentRect;
                app.indPerCentTri=d.indPerCentTri;
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.segmentationMask=d.segmentationMask;
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                try
                    app.particlesFindingMethod=d.circleFindingMethod;
                catch
                    app.particlesFindingMethod=d.particlesFindingMethod;
                end
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            try
                app.ManualmaxEditField.Value=d.sens3;
                app.GranularityEditField.Value=d.gran;
                try
                    app.particlesMetric=d.particlesMetric;
                catch
                    app.particlesMetric=d.circleMetric;
                end
            catch
                errordlg('There was a problem Loading the file','Load Error!');
                return;
            end
            app.UIFigure.Visible='off';
            app.UIFigure.Visible = 'on';
        end

        % Button pushed function: PlotforcorrectionButton
        function PlotforcorrectionButtonPushed(app, event)
            % Plotting the image and found particles in the second tab.
            cla(app.UIAxes2_2)
            imshow(app.imageP,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image") 
            hold(app.UIAxes2_2,'on')
            if isempty(app.centers)==false && app.ShowcentersCheckBox.Value==true
                scatter(app.UIAxes2_2,app.centers(:,1),app.centers(:,2),'.red')
            end
            if isempty(app.segmentationMask) && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                app.imageP(app.segmentationMask)=nan;
            end
            app.imagePTemp=app.imageP;
        end

        % Button pushed function: ChooseparticleButton
        function ChooseparticleButtonPushed(app, event)
            % Finding the nearest particle to the point clicked on by the
            % user, adding it to app.centerMarked and marking it on the image.
            if isempty(app.centers)==false
                fhv = app.UIFigure.HandleVisibility;        
                app.UIFigure.HandleVisibility = 'callback'; 
                set(0, 'CurrentFigure', app.UIFigure)       
                [x1,y1]=ginput(1);
                app.UIFigure.HandleVisibility = fhv;
                dist=sqrt((app.centers(:,1)-x1).^2+(app.centers(:,2)-y1).^2);
                [~,minInd]=min(dist);
                app.centerMarked=[app.centers(minInd,1),app.centers(minInd,2)];
                viscircles(app.UIAxes2_2,app.centerMarked, app.radii(minInd));
                close(figure(1))
            end
        end

        % Button pushed function: DeleteparticleButton
        function DeleteparticleButtonPushed(app, event)
            % Deleting the particle chosen by the user.
            if isempty(app.centerMarked)==false
                RowIdx = find(ismember(app.centers, app.centerMarked,'rows'));
                if isempty(RowIdx)==false
                    ind=ones(length(app.centers),1);
                    ind(RowIdx)=0;
                    app.centers=app.centers(ind>0,:);
                    app.radii=app.radii(ind>0,:);
                    app.particlesMetric=app.particlesMetric(ind>0);
                end
            end
            cla(app.UIAxes2_2)
            imshow(app.imageP,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image") 
            hold(app.UIAxes2_2,'on')
            if isempty(app.centers)==false && app.ShowcentersCheckBox.Value==true
                scatter(app.UIAxes2_2,app.centers(:,1),app.centers(:,2),'.red')
            end
        end

        % Button pushed function: MarkDomainButton
        function MarkDomainButtonPushed(app, event)
             % Choosing a domain for in-domain adjustment by the user and plotting the
             % chosen domain.
             cla(app.UIAxes2_2)
             imshow(app.imageP,'Parent',app.UIAxes2_2)
             axis(app.UIAxes2_2,"image") 
             hold(app.UIAxes2_2,'on')
             fhv = app.UIFigure.HandleVisibility;        
             app.UIFigure.HandleVisibility = 'callback'; 
             set(0, 'CurrentFigure', app.UIFigure)       
             app.indicesTopLeft=floor(ginput(1));
             app.UIFigure.HandleVisibility = fhv;
             scatter(app.UIAxes2_2,app.indicesTopLeft(1),app.indicesTopLeft(2),'.red')
             fhv = app.UIFigure.HandleVisibility;        
             app.UIFigure.HandleVisibility = 'callback'; 
             set(0, 'CurrentFigure', app.UIFigure)       
             app.indicesBottomRight=floor(ginput(1));
             app.UIFigure.HandleVisibility = fhv;
             xMin=min(app.indicesTopLeft(1),app.indicesBottomRight(1));
             xMax=max(app.indicesTopLeft(1),app.indicesBottomRight(1));
             yMin=min(app.indicesTopLeft(2),app.indicesBottomRight(2));
             yMax=max(app.indicesTopLeft(2),app.indicesBottomRight(2));
             app.indicesTopLeft=[xMin,yMin];
             app.indicesBottomRight=[xMax,yMax];
             plot(app.UIAxes2_2,[xMin,xMax],[yMin,yMin],"Color",'red')
             plot(app.UIAxes2_2,[xMin,xMax],[yMax,yMax],"Color",'red')
             plot(app.UIAxes2_2,[xMin,xMin],[yMin,yMax],"Color",'red')
             plot(app.UIAxes2_2,[xMax,xMax],[yMin,yMax],"Color",'red')
        end

        % Button pushed function: ImAdjustindomainButton
        function ImAdjustindomainButtonPushed(app, event)
            % Adjusting the image using imadjust in the domain chosen by the user.
            xMin=app.indicesTopLeft(1);
            yMin=app.indicesTopLeft(2);
            xMax=app.indicesBottomRight(1);
            yMax=app.indicesBottomRight(2);
            app.imagePTemp(yMin:yMax,xMin:xMax)=imadjust(app.imagePTemp(yMin:yMax,xMin:xMax));
            cla(app.UIAxes2_2)
            imshow(app.imagePTemp,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image")
            hold(app.UIAxes2_2,'on')
            plot(app.UIAxes2_2,[xMin,xMax],[yMin,yMin],"Color",'red')
            plot(app.UIAxes2_2,[xMin,xMax],[yMax,yMax],"Color",'red')
            plot(app.UIAxes2_2,[xMin,xMin],[yMin,yMax],"Color",'red')
            plot(app.UIAxes2_2,[xMax,xMax],[yMin,yMax],"Color",'red')
        end

        % Button pushed function: HistEqindomainButton
        function HistEqindomainButtonPushed(app, event)
            % Adjusting the image using histeq in the domain chosen by the user.
            xMin=app.indicesTopLeft(1);
            yMin=app.indicesTopLeft(2);
            xMax=app.indicesBottomRight(1);
            yMax=app.indicesBottomRight(2);
            app.imagePTemp(yMin:yMax,xMin:xMax)=histeq(app.imagePTemp(yMin:yMax,xMin:xMax));
            cla(app.UIAxes2_2)
            imshow(app.imagePTemp,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image") 
            hold(app.UIAxes2_2,'on')
            plot(app.UIAxes2_2,[xMin,xMax],[yMin,yMin],"Color",'red')
            plot(app.UIAxes2_2,[xMin,xMax],[yMax,yMax],"Color",'red')
            plot(app.UIAxes2_2,[xMin,xMin],[yMin,yMax],"Color",'red')
            plot(app.UIAxes2_2,[xMax,xMax],[yMin,yMax],"Color",'red')
        end

        % Button pushed function: AdaptHistEqindomainButton
        function AdaptHistEqindomainButtonPushed(app, event)
            % Adjusting the image using adapthisteq in the domain chosen by the user.
            xMin=app.indicesTopLeft(1);
            yMin=app.indicesTopLeft(2);
            xMax=app.indicesBottomRight(1);
            yMax=app.indicesBottomRight(2);
            app.imagePTemp(yMin:yMax,xMin:xMax)=adapthisteq(app.imagePTemp(yMin:yMax,xMin:xMax)); 
            cla(app.UIAxes2_2)
            imshow(app.imagePTemp,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image")
            hold(app.UIAxes2_2,'on')
            plot(app.UIAxes2_2,[xMin,xMax],[yMin,yMin],"Color",'red')
            plot(app.UIAxes2_2,[xMin,xMax],[yMax,yMax],"Color",'red')
            plot(app.UIAxes2_2,[xMin,xMin],[yMin,yMax],"Color",'red')
            plot(app.UIAxes2_2,[xMax,xMax],[yMin,yMax],"Color",'red')
        end

        % Button pushed function: SaveadjustedimageButton
        function SaveadjustedimageButtonPushed(app, event)
            % Saveing the adjusted image.
            if isempty(app.segmentationMask)==false && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                vIm=app.BackgroundcolorDropDown.Value;
                vIm=convertCharsToStrings(vIm);
                if vIm==['White']
                    app.imagePTemp(app.segmentationMask)=255;
                else
                    app.imagePTemp(app.segmentationMask)=0;
                end
            end
            app.imageP=app.imagePTemp;
            cla(app.UIAxes2_2)
            imshow(app.imageP,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image")
            cla(app.UIAxes_2)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
        end

        % Callback function
        function PlotmaskscentershexaButtonPushed(app, event)
            % Plotting the centers of the detected hexagonal hulls per user request. 
            cla(app.UIAxes2)
            imshow(app.imageP,'Parent',app.UIAxes2)
            axis(app.UIAxes2,"image") 
            hold(app.UIAxes2,'on')
            if isempty(app.coorOfMasksHexa)==false
               scatter(app.UIAxes2,app.coorOfMasksHexa(:,1),app.coorOfMasksHexa(:,2),int32(round(mean(app.radii))),"cyan",'o','filled');
            end
        end

        % Button pushed function: SortButton
        function SortButtonPushed(app, event)
            % Sorting and screening the found hexagonal hulls using user specified parametes.  
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.coorOfMasksHexaNotSorted)==false
                cutoff=mean(app.radii);
                app.coorOfMasksHexa=app.coorOfMasksHexaNotSorted;
                app.eOfMasksHexa=app.eofNotSortedMasksHexa;
                app.indPerCentHexa=app.indPerCentHexaNotSorted;
                ind=app.eOfMasksHexa<=app.MultiplicativehexagonalEditField.Value*(-cutoff^2+(cutoff/app.FractionhexagonalEditField.Value)^2);
                app.coorOfMasksHexa=app.coorOfMasksHexa(ind,:);
                app.eOfMasksHexa=app.eOfMasksHexa(ind);
                app.indPerCentHexa=app.indPerCentHexa(ind,:);
                [ind2] = keepUniqueMinHexa(app);
                app.coorOfMasksHexa= app.coorOfMasksHexa(ind2==1,:);
                app.eOfMasksHexa=app.eOfMasksHexa(ind2==1);
                app.indPerCentHexa=app.indPerCentHexaNotSorted(ind2==1,:);
                cla(app.UIAxes2)
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                plotDirectionColor(app,app.UIAxes2,1)
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: SegmentButton
        function SegmentButtonPushed(app, event)
           % Segmenting the image in order to remove background. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            BW = imbinarize(app.imageP);
            v=app.HolefillingfactorEditField.Value;
            BW= imclose(BW,strel('disk',v));
            BW = imfill( BW ,'holes') ;
            BW=bwareafilt( BW,1);
            boundary=fliplr( cell2mat( bwboundaries( BW )  ) );
            app.domain=polyshape(boundary(:,1),boundary(:,2));
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image")
            hold(app.UIAxes_3,'on')
            hold on
            plot(app.UIAxes_3,app.domain);
            close(figure(1))
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: RemovesegmentedButton
        function RemovesegmentedButtonPushed(app, event)
            % Removing the segmented pixels (out of app.domain) by setting them to NaN.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            [xq,yq]=meshgrid(1:size(app.imageP,2),1:size(app.imageP,1));
            [xv,yv] = boundary(app.domain);
            in = inpolygon(xq,yq,xv,yv);
            vIm=app.BackgroundcolorDropDown.Value;
            vIm=convertCharsToStrings(vIm);
            app.segmentationMask=in;
            if vIm==['White']
                app.imageP(in)=255;
            else
                app.imageP(in)=0;
            end
            cla(app.UIAxes_2)
            cla(app.UIAxes_3)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image")
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PlotwithdirectionsButton
        function PlotwithdirectionsButtonPushed(app, event)
            % Plotting the hulls' direction per unit-cell type. 
            cla(app.UIAxes2_3)
            imshow(app.imageP,'Parent',app.UIAxes2_3)
            axis(app.UIAxes2_3,"image")
            hold(app.UIAxes2_3,'on')
            if isempty(app.eOfMasksHexa)==false && app.HexagonalButton.Value
                plotDirectionColor(app,app.UIAxes2_3,1)
            end
            if isempty(app.eOfMasksRect)==false && app.RectangularButton.Value
                plotDirectionColor(app,app.UIAxes2_3,2)
            end
            if isempty(app.eOfMasksTri)==false && app.TriangularButton.Value
                plotDirectionColor(app,app.UIAxes2_3,3)
            end
        end

        % Button pushed function: AddpointtoregionButton
        function AddpointtoregionButtonPushed(app, event)
             % Adding a user picked point for the formation of a domain.
             fhv = app.UIFigure.HandleVisibility;       
             app.UIFigure.HandleVisibility = 'callback'; 
             set(0, 'CurrentFigure', app.UIFigure)       
             points=floor(ginput(1));
             app.UIFigure.HandleVisibility = fhv;
             scatter(app.UIAxes2_3,points(1),points(2),'.red')
             app.region(end+1,1:2)=points;
        end

        % Button pushed function: CreateregionButton
        function CreateregionButtonPushed(app, event)
            % Creating a user chosen domain for angle measurement. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if size(app.region,1)>2
                pgon=polyshape(app.region(:,1),app.region(:,2));
                plot(app.UIAxes2_3,pgon,'FaceColor','none','EdgeColor','b','LineWidth',2) 
                if isempty(app.coorOfMasksHexa)==false && app.HexagonalButton.Value
                    in=inpolygon(app.coorOfMasksHexa(:,1),app.coorOfMasksHexa(:,2),app.region(:,1),app.region(:,2));
                    angInRegion=app.coorOfMasksHexa(in,3);
                    meanAng=mean(angInRegion);
                    app.MeanangleinregionTextArea.Value=num2str(180*meanAng/pi);
                end
                if isempty(app.coorOfMasksRect)==false && app.RectangularButton.Value
                    in=inpolygon(app.coorOfMasksRect(:,1),app.coorOfMasksRect(:,2),app.region(:,1),app.region(:,2));
                    angInRegion=app.coorOfMasksRect(in,3);
                    meanAng=mean(angInRegion);
                    app.MeanangleinregionTextArea.Value=num2str(180*meanAng/pi);
                end
                if isempty(app.coorOfMasksTri)==false && app.TriangularButton.Value
                    in=inpolygon(app.coorOfMasksTri(:,1),app.coorOfMasksTri(:,2),app.region(:,1),app.region(:,2));
                    angInRegion=app.coorOfMasksTri(in,3);
                    angInRegion=mod(angInRegion,pi/3);
                    meanAng=mean(angInRegion);
                    app.MeanangleinregionTextArea.Value=num2str(180*meanAng/pi);
                end
            else
                app.MeanangleinregionTextArea.Value='Please choose at least 3 points to create a domain.';
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: ClearregionButton
        function ClearregionButtonPushed(app, event)
            % Clearing the user chosen domain for angle measurement. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            app.MeanangleinregionTextArea.Value='';
            app.region=[];
            app.angMin=0;
            app.angMax=pi;
            cla(app.UIAxes2_3)
            imshow(app.imageP,'Parent',app.UIAxes2_3)
            axis(app.UIAxes2_3,"image")
            hold(app.UIAxes2_3,'on')
            if app.HexagonalButton.Value
                plotDirectionColor(app,app.UIAxes2_3,1)
            elseif app.RectangularButton.Value
                plotDirectionColor(app,app.UIAxes2_3,2)
            elseif app.TriangularButton.Value
                plotDirectionColor(app,app.UIAxes2_3,3)
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PlotadjustedtoclustersButton
        function PlotadjustedtoclustersButtonPushed(app, event)
            % Plotting the clustered angles with adjusted colormaps in
            % different figures. Clustering the angles to k groups using kmeans.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            k=app.NumberofclustersinregionEditField.Value;
            if isempty(app.region)==true
                app.region=[1,1;app.xHigh,1;app.xHigh,app.yHigh;1,app.yHigh];
            end
            if isempty(app.coorOfMasksHexa)==false && app.HexagonalButton.Value
                coor=app.coorOfMasksHexa;
                a=app.hullHexa(1)/2;
            elseif isempty(app.coorOfMasksRect)==false && app.RectangularButton.Value
                coor=app.coorOfMasksRect;
                a=app.hullRect(1)/4;
            elseif isempty(app.coorOfMasksTri)==false && app.TriangularButton.Value
                coor=app.coorOfMasksTri;
                coor(:,3)=mod(coor(:,3),pi/3);
                a=app.hullTri(1);
                a=sqrt(0.75).*a/3;
            end
            if isempty(coor)==false
                in=inpolygon(coor(:,1),coor(:,2),app.region(:,1),app.region(:,2));
                coorInDomain=coor(in,:);
                idx = kmeans(coorInDomain(:,3),k);
                minAnglesPerDomain=NaN(1,k);
                maxAnglesPerDomain=NaN(1,k);
                for i=1:k
                    angsInDomain=coorInDomain(idx==i,3);
                    minAnglesPerDomain(i)=min(angsInDomain);
                    maxAnglesPerDomain(i)=max(angsInDomain);
                end
                minAnglesPerDomain=sort(minAnglesPerDomain);
                maxAnglesPerDomain=sort(maxAnglesPerDomain);
                for i=1:k
                    Cmap=zeros(256,4);
                    jump=(maxAnglesPerDomain(i)-minAnglesPerDomain(i))/255;
                    col2=minAnglesPerDomain(i):jump:maxAnglesPerDomain(i);
                    Cmap(:,1)=col2';
                    Cmap(:,2:4)=hsv;
                    col = interp1(Cmap(:,1),Cmap(:,2:4),coorInDomain(:,3));
                    col(coorInDomain(:,3)>maxAnglesPerDomain(i),:)=repmat(Cmap(end,2:4),sum(coorInDomain(:,3)>maxAnglesPerDomain(i)),1);
                    col(coorInDomain(:,3)<minAnglesPerDomain(i),:)=repmat(Cmap(1,2:4),sum(coorInDomain(:,3)<minAnglesPerDomain(i)),1);
                    indGr=(coorInDomain(:,3)<=maxAnglesPerDomain(i)).*(coorInDomain(:,3)>=minAnglesPerDomain(i));
                    m1=mean(coorInDomain(indGr==1,3));
                    figure(30+i)
                    s1=subplot(1,2,1);
                    imshow(app.imageP)
                    title(gca,['Mean angle = ',num2str(m1*180/pi)]);
                    axis image
                    hold on
                    if app.HexagonalButton.Value || app.RectangularButton.Value
                        for j=1:length(coorInDomain)
                            plot(s1,[coorInDomain(j,1)-cos(coorInDomain(j,3)).*a,coorInDomain(j,1)+cos(coorInDomain(j,3)).*a],[coorInDomain(j,2)-sin(coorInDomain(j,3)).*a,coorInDomain(j,2)+sin(coorInDomain(j,3)).*a],'Color',col(j,:),'LineWidth',1.5)
                        end
                    elseif app.TriangularButton.Value
                        for j=1:length(coorInDomain)
                            if isnan(col(j,:))==false
                                plot(s1,[coorInDomain(j,1)-cos(coorInDomain(j,3)+pi/2).*a,coorInDomain(j,1)+cos(coorInDomain(j,3)+pi/2).*a],[coorInDomain(j,2)-sin(coorInDomain(j,3)+pi/2).*a,coorInDomain(j,2)+sin(coorInDomain(j,3)+pi/2).*a],'Color',col(j,:),'LineWidth',1.5)
                                plot(s1,[coorInDomain(j,1)-cos(coorInDomain(j,3)+2*pi/3+pi/2).*a,coorInDomain(j,1)+cos(coorInDomain(j,3)+pi/2+2*pi/3).*a],[coorInDomain(j,2)-sin(coorInDomain(j,3)+pi/2+2*pi/3).*a,coorInDomain(j,2)+sin(coorInDomain(j,3)+pi/2+2*pi/3).*a],'Color',col(j,:),'LineWidth',1.5)
                                plot(s1,[coorInDomain(j,1)-cos(coorInDomain(j,3)+4*pi/3+pi/2).*a,coorInDomain(j,1)+cos(coorInDomain(j,3)+pi/2+4*pi/3).*a],[coorInDomain(j,2)-sin(coorInDomain(j,3)+pi/2+4*pi/3).*a,coorInDomain(j,2)+sin(coorInDomain(j,3)+pi/2+4*pi/3).*a],'Color',col(j,:),'LineWidth',1.5)
                            end
                        end
                    end
                    if app.HexagonalButton.Value || app.RectangularButton.Value
                        n2=floor(20*pi/(maxAnglesPerDomain(i)-minAnglesPerDomain(i)));
                        r=22*(n2)/(maxAnglesPerDomain(i)-minAnglesPerDomain(i));
                        t=(0:n2-1)/(n2)*pi;
                        x=r*cos(t);
                        y=r*sin(t);
                        orient=atan2(y,x);
                        centersLeg=[x' -y'];
                        centersLeg2=[x' -y'];
                        M = [cos(pi) -sin(pi); sin(pi) cos(pi)];
                        centersLeg2=(M*centersLeg2')';
                        col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                        col(orient>maxAnglesPerDomain(i),:)=repmat(Cmap(end,2:4),sum(orient>maxAnglesPerDomain(i)),1);
                        col(orient<minAnglesPerDomain(i),:)=repmat(Cmap(end,2:4),sum(orient<minAnglesPerDomain(i)),1);
                        s2=subplot(1,2,2);
                        hold on
                        for ii=1:n2
                            points=centersLeg(ii,:);
                            points2=centersLeg2(ii,:);
                            rectangle(s2,'Position',[points,n2,n2],'Curvature',[1 1],'FaceColor',col(ii,:),'EdgeColor','None');
                            rectangle(s2,'Position',[points2,n2,n2],'Curvature',[1 1],'FaceColor',col(ii,:),'EdgeColor','None');
                        end
                        box off
                        xlim([-r*1.1,r*1.1])
                        ylim([-r*1.1,r*1.1])
                    else
                        n2=50;
                        r=22*(n2)/(pi/3);
                        t=(0:n2-1)/(n2)*pi/3;
                        x=r*cos(t);
                        y=r*sin(t);
                        orient=atan2(y,x);
                        centersLeg=[x' -y'];
                        M = [cos(pi/2) -sin(pi/2); sin(pi/2) cos(pi/2)];
                        centersLeg=(M*centersLeg')';
                        centersLeg2=[x' -y'];
                        M = [cos(pi/3+pi/2) -sin(pi/3+pi/2); sin(pi/3+pi/2) cos(pi/3+pi/2)];
                        centersLeg2=(M*centersLeg2')';
                        centersLeg3=[x' -y'];
                        M = [cos(2*pi/3+pi/2) -sin(2*pi/3+pi/2); sin(2*pi/3+pi/2) cos(2*pi/3+pi/2)];
                        centersLeg3=(M*centersLeg3')';
                        centersLeg4=[x' -y'];
                        M = [cos(pi+pi/2) -sin(pi+pi/2); sin(pi+pi/2) cos(pi+pi/2)];
                        centersLeg4=(M*centersLeg4')';
                        centersLeg5=[x' -y'];
                        M = [cos(4*pi/3+pi/2) -sin(4*pi/3+pi/2); sin(4*pi/3+pi/2) cos(4*pi/3+pi/2)];
                        centersLeg5=(M*centersLeg5')';
                        centersLeg6=[x' -y'];
                        M = [cos(5*pi/3+pi/2) -sin(5*pi/3+pi/2); sin(5*pi/3+pi/2) cos(5*pi/3+pi/2)];
                        centersLeg6=(M*centersLeg6')';
                        col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                        col(orient>maxAnglesPerDomain(i),:)=repmat(Cmap(end,2:4),sum(orient>maxAnglesPerDomain(i)),1);
                        col(orient<minAnglesPerDomain(i),:)=repmat(Cmap(end,2:4),sum(orient<minAnglesPerDomain(i)),1);
                        s2=subplot(1,2,2);
                        hold on
                        for ii=1:n2
                            points=centersLeg(ii,:);
                            points2=centersLeg2(ii,:);
                            points3=centersLeg3(ii,:);
                            points4=centersLeg4(ii,:);
                            points5=centersLeg5(ii,:);
                            points6=centersLeg6(ii,:);
                            rectangle(s2,'Position',[points,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                            rectangle(s2,'Position',[points2,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                            rectangle(s2,'Position',[points3,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                            rectangle(s2,'Position',[points4,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                            rectangle(s2,'Position',[points5,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                            rectangle(s2,'Position',[points6,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                        end
                    end
                    axis equal
                end
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: OptimizemaskhexagonButton
        function OptimizemaskhexagonButtonPushed(app, event)
            % Optimizing the mask using the found fits for the user chosen
            % masks and finding the optimal fits using this mask.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.hullHexa)==false
                I=~isnan(app.indPerCentHexa(:,1));
                indPerCentNoNan=app.indPerCentHexa(I,:);
                d1=sqrt((app.centers(indPerCentNoNan(:,2),1)-app.centers(indPerCentNoNan(:,3),1)).^2+(app.centers(indPerCentNoNan(:,2),2)-app.centers(indPerCentNoNan(:,3),2)).^2);
                d2=sqrt((app.centers(indPerCentNoNan(:,5),1)-app.centers(indPerCentNoNan(:,6),1)).^2+(app.centers(indPerCentNoNan(:,5),2)-app.centers(indPerCentNoNan(:,6),2)).^2);
                d3=sqrt((app.centers(indPerCentNoNan(:,2),1)-app.centers(indPerCentNoNan(:,6),1)).^2+(app.centers(indPerCentNoNan(:,2),2)-app.centers(indPerCentNoNan(:,6),2)).^2);
                d4=sqrt((app.centers(indPerCentNoNan(:,5),1)-app.centers(indPerCentNoNan(:,3),1)).^2+(app.centers(indPerCentNoNan(:,5),2)-app.centers(indPerCentNoNan(:,3),2)).^2);
                a=mean([d1;d2]);
                b=mean([d3;d4]);
                v1 = app.centers(indPerCentNoNan(:,2),:)- app.centers(indPerCentNoNan(:,6),:);
                v2= app.centers(indPerCentNoNan(:,1),:)- app.centers(indPerCentNoNan(:,2),:);
                d5 = norm(cross([v1,zeros(size(indPerCentNoNan,1),1)],[v2,zeros(size(indPerCentNoNan,1),1)])) / norm(v1);
                v1 = app.centers(indPerCentNoNan(:,3),:)- app.centers(indPerCentNoNan(:,5),:);
                v2= app.centers(indPerCentNoNan(:,4),:)- app.centers(indPerCentNoNan(:,3),:);
                d6 = norm(cross([v1,zeros(size(indPerCentNoNan,1),1)],[v2,zeros(size(indPerCentNoNan,1),1)])) / norm(v1);
                c=mean([d5;d6]);
                app.hullHexa=[a,b,c];
                 v=app.ParallelcomputationSwitch.Value;
                 v=convertCharsToStrings(v);
                 if v==['Off']
                      identifyHexa(app)
                 else
                      identifyHexaParallel(app)
                 end
            else
                app.InstructionsTextArea.Value='Please create a mask first.';
            end 
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PlotformaskcreationButton
        function PlotformaskcreationButtonPushed(app, event)
            % Plotting the particles' found centers for hull creation. 
            cla(app.UIAxes2)
            imshow(app.imageP,'Parent',app.UIAxes2)
            axis(app.UIAxes2,"image") 
            hold(app.UIAxes2,'on')
             if isempty(app.centers)==false
                scatter(app.UIAxes2,app.centers(:,1),app.centers(:,2),'.red')
             end
        end

        % Button pushed function: PickdomainButton
        function PickdomainButtonPushed(app, event)
            % Picking of a domain by the user in the image in the second panel for 
            % zoom-in for particle choosing for hull creation if the particles are too
            % dense to pick in the full image. 
            fhv = app.UIFigure.HandleVisibility;       
             app.UIFigure.HandleVisibility = 'callback'; 
             set(0, 'CurrentFigure', app.UIFigure)      
             app.indicesTopLeft=floor(ginput(1));
             app.UIFigure.HandleVisibility = fhv;
             scatter(app.UIAxes2,app.indicesTopLeft(1),app.indicesTopLeft(2),'.blue')
             fhv = app.UIFigure.HandleVisibility;       
             app.UIFigure.HandleVisibility = 'callback'; 
             set(0, 'CurrentFigure', app.UIFigure)       
             app.indicesBottomRight=floor(ginput(1));
             app.UIFigure.HandleVisibility = fhv;
             xMin=min(app.indicesTopLeft(1),app.indicesBottomRight(1));
             xMax=max(app.indicesTopLeft(1),app.indicesBottomRight(1));
             yMin=min(app.indicesTopLeft(2),app.indicesBottomRight(2));
             yMax=max(app.indicesTopLeft(2),app.indicesBottomRight(2));
             app.indicesTopLeftMasks=[xMin,yMin];
             app.indicesBottomRightMasks=[xMax,yMax];
             plot(app.UIAxes2,[xMin,xMax],[yMin,yMin],"Color",'blue')
             plot(app.UIAxes2,[xMin,xMax],[yMax,yMax],"Color",'blue')
             plot(app.UIAxes2,[xMin,xMin],[yMin,yMax],"Color",'blue')
             plot(app.UIAxes2,[xMax,xMax],[yMin,yMax],"Color",'blue')
        end

        % Button pushed function: ZoominButton
        function ZoominButtonPushed(app, event)
           % Zooming-in on a user specified domain in the second panel.
            if isempty(app.indicesBottomRightMasks)==false && isempty(app.indicesTopLeftMasks)==false
                xMin=min(app.indicesTopLeftMasks(1),app.indicesBottomRightMasks(1));
                xMax=max(app.indicesTopLeftMasks(1),app.indicesBottomRightMasks(1));
                yMin=min(app.indicesTopLeftMasks(2),app.indicesBottomRightMasks(2));
                yMax=max(app.indicesTopLeftMasks(2),app.indicesBottomRightMasks(2));
                xlim(app.UIAxes2,[xMin,xMax]);
                ylim(app.UIAxes2,[yMin,yMax]);
            end
        end

        % Button pushed function: ZoomoutButton
        function ZoomoutButtonPushed(app, event)
            % Zooming-out to full image in the second panel. 
            xlim(app.UIAxes2,[1,app.xHigh]);
            ylim(app.UIAxes2,[1,app.yHigh]);
        end

        % Button pushed function: KeepsegmentedButton
        function KeepsegmentedButtonPushed(app, event)
            % Keeping the segmented pixels and turning the rest to NaNs.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            [xq,yq]=meshgrid(1:size(app.imageP,2),1:size(app.imageP,1));
            [xv,yv] = boundary(app.domain);
            in = inpolygon(xq,yq,xv,yv);
            vIm=app.BackgroundcolorDropDown.Value;
            vIm=convertCharsToStrings(vIm);
            app.segmentationMask=~in;
            if vIm==['White']
                app.imageP(~in)=255;
            else
                app.imageP(~in)=0;
            end
            cla(app.UIAxes_2)
            cla(app.UIAxes_3)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image")
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: DeblurringButton
        function DeblurringButtonPushed(app, event)
            % Deblurring the image using deconvblind with filter of the size
            % of 1/4 of the mean particle radius (with minimum of 3).
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            filtSize=max(round(mean(app.radii)/4),3);
            INITPSF = ones(filtSize);
            [app.imageP,~]=deconvblind(app.imageP,INITPSF);
            cla(app.UIAxes_2)
            cla(app.UIAxes_3)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image")
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PlotButton
        function PlotButtonPushed(app, event)
            % Plotting particles' and hulls' centers per user request. 
            cla(app.UIAxes2_4)
            imshow(app.imageP,'Parent',app.UIAxes2_4)
            axis(app.UIAxes2_4,"image")
            hold(app.UIAxes2_4,'on')
            if isempty(app.centers)==false && app.ParticlesCheckBox.Value==true
                scatter(app.UIAxes2_4,app.centers(:,1),app.centers(:,2),'.red')
            end
            if isempty(app.coorOfMasksHexa)==false && app.MaskscentersCheckBox.Value==true
                scatter(app.UIAxes2_4,app.coorOfMasksHexa(:,1),app.coorOfMasksHexa(:,2),'.green')
            end
        end

        % Button pushed function: 
        % PlotassociationofparticleswithmaskscentersButton
        function PlotassociationofparticleswithmaskscentersButtonPushed(app, event)
            % Plotting lines marking connected particles with each hexagonal hulls' center
            % by finding the closest particle to each hull vertex.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            cla(app.UIAxes2_4)
            imshow(app.imageP,'Parent',app.UIAxes2_4)
            axis(app.UIAxes2_4,"image")
            hold(app.UIAxes2_4,'on')
            for i=1:size(app.coorOfMasksHexa)
                if isnan(app.indPerCentHexa(i,1))==false
                for j=1:6
                    plot(app.UIAxes2_4,[app.coorOfMasksHexa(i,1),app.centers(app.indPerCentHexa(i,j),1)],[app.coorOfMasksHexa(i,2),app.centers(app.indPerCentHexa(i,j),2)],'green')
                end
                scatter(app.UIAxes2_4,app.coorOfMasksHexa(i,1),app.coorOfMasksHexa(i,2),'.red')
                end
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: 
        % AssigndirectionsclusterwithminimalenergyButton
        function AssigndirectionsclusterwithminimalenergyButtonPushed(app, event)
            % Assigning polarity for hexagonal hulls starting with the best fitting hull. 
            % Assigning directions for neighboring hulls using shared
            % particles until no hulls "connected" to the initial hull
            % remain. Relevant for some 2-fold hexagonal unit-cells where neighboring
            % particles are on different z level. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            app.directions={};
            dir=NaN(1,length(app.eOfMasksHexa));
            dir(1)=0;
            queDir=[];
            cLine=app.indPerCentHexa(1,:);
            for i=1:size(app.coorOfMasksHexa)
                [C,ia,ib] = intersect(cLine,app.indPerCentHexa(i,:));
                if length(C)==2 
                    if isnan(dir(i))==true
                        queDir(end+1)=i;                        
                        if mod(ia(1)+ib(1),2)==1
                            dir(i)=1;
                        else
                            dir(i)=0;
                        end
                    end
                end
            end
            while isempty(queDir)==false 
                ind=queDir(1);
                cLine=app.indPerCentHexa(ind,:);
                if length(queDir)>1
                    queDir=queDir(2:end);
                else
                    queDir=[];
                end
                for i=2:size(app.coorOfMasksHexa)
                if length(intersect(cLine,app.indPerCentHexa(i,:)))==2
                    if isnan(dir(i))==true
                        queDir(end+1)=i;
                        [~,ia,ib] = intersect(cLine,app.indPerCentHexa(i,:));
                        if mod(ia(1)+ib(1),2)==0
                            dir(i)=dir(ind);
                        else
                            if dir(ind)==1
                                dir(i)=0;
                            else
                                dir(i)=1;
                            end
                        end
                    end
                end
                end
            end
            app.directions{end+1}=dir;
            cla(app.UIAxes2_4)
            imshow(app.imageP,'Parent',app.UIAxes2_4)
            axis(app.UIAxes2_4,"image")
            hold(app.UIAxes2_4,'on')
            rad=2*mean(app.radii);
            for k=1:length(app.directions)
                dir=app.directions{end};
                for i=1:size(app.coorOfMasksHexa)
                    if dir(i)==0
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,1),1),app.centers(app.indPerCentHexa(i,1),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,2),1),app.centers(app.indPerCentHexa(i,2),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,3),1),app.centers(app.indPerCentHexa(i,3),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,4),1),app.centers(app.indPerCentHexa(i,4),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,5),1),app.centers(app.indPerCentHexa(i,5),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,6),1),app.centers(app.indPerCentHexa(i,6),2),rad,'blue','filled','o');
                    elseif dir(i)==1
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,1),1),app.centers(app.indPerCentHexa(i,1),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,2),1),app.centers(app.indPerCentHexa(i,2),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,3),1),app.centers(app.indPerCentHexa(i,3),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,4),1),app.centers(app.indPerCentHexa(i,4),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,5),1),app.centers(app.indPerCentHexa(i,5),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,6),1),app.centers(app.indPerCentHexa(i,6),2),rad,'yellow','filled','o');
                    end
                end
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: FlipallButton
        function FlipallButtonPushed(app, event)
            % Flipping the polarity of all found hexagonal hulls. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            for i=1:length(app.directions)
            dir=app.directions{i};
            dir(dir==1)=2;
            dir(dir==0)=1;
            dir(dir==2)=0;
            app.directions{i}=dir;
            end
            
            cla(app.UIAxes2_4)
            imshow(app.imageP,'Parent',app.UIAxes2_4)
            axis(app.UIAxes2_4,"image")
            hold(app.UIAxes2_4,'on')
            rad=2*mean(app.radii);
             for k=1:length(app.directions)
                dir=app.directions{end};
                for i=1:size(app.coorOfMasksHexa)
                    if dir(i)==0
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,1),1),app.centers(app.indPerCentHexa(i,1),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,2),1),app.centers(app.indPerCentHexa(i,2),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,3),1),app.centers(app.indPerCentHexa(i,3),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,4),1),app.centers(app.indPerCentHexa(i,4),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,5),1),app.centers(app.indPerCentHexa(i,5),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,6),1),app.centers(app.indPerCentHexa(i,6),2),rad,'blue','filled','o');
                    elseif dir(i)==1
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,1),1),app.centers(app.indPerCentHexa(i,1),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,2),1),app.centers(app.indPerCentHexa(i,2),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,3),1),app.centers(app.indPerCentHexa(i,3),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,4),1),app.centers(app.indPerCentHexa(i,4),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,5),1),app.centers(app.indPerCentHexa(i,5),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,6),1),app.centers(app.indPerCentHexa(i,6),2),rad,'yellow','filled','o');
                    end
                end
             end
             app.ReadyLamp.Color='green';
             app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: ChoosemaskButton
        function ChoosemaskButtonPushed(app, event)
            % Picking a hull by the user by clicking, for next operations.  
            if isempty(app.coorOfMasksHexa)==false
                fhv = app.UIFigure.HandleVisibility;        % Current status
                app.UIFigure.HandleVisibility = 'callback'; % Temp change (or, 'on')
                set(0, 'CurrentFigure', app.UIFigure)       % Make fig current
                [x1,y1]=ginput(1);
                app.UIFigure.HandleVisibility = fhv;
                dist=sqrt((app.coorOfMasksHexa(:,1)-x1).^2+(app.coorOfMasksHexa(:,2)-y1).^2);
                [~,minInd]=min(dist);
                scatter(app.UIAxes2_4,app.coorOfMasksHexa(minInd,1),app.coorOfMasksHexa(minInd,2), '.red');
                close(figure(1))
                app.indChosenMask=minInd;
            end
        end

        % Button pushed function: AssigndirectionschosenButton
        function AssigndirectionschosenButtonPushed(app, event)
            % Assigning a hexagonal hull polarity starting with a user 
            % chosen hull by clicking on it's center. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            dir=NaN(1,length(app.eOfMasksHexa));
            dir(1)=0;
            queDir=[];
            cLine=app.indPerCentHexa(app.indChosenMask,:);
            for i=1:size(app.coorOfMasksHexa) 
                [C,ia,ib] = intersect(cLine,app.indPerCentHexa(i,:));
                if length(C)==2 
                    if isnan(dir(i))==true
                        queDir(end+1)=i;                        
                        if mod(ia(1)+ib(1),2)==1
                            dir(i)=1;
                        else
                            dir(i)=0;
                        end
                    end
                end
            end
           
            while isempty(queDir)==false
                ind=queDir(1);
                cLine=app.indPerCentHexa(ind,:);
                if length(queDir)>1
                    queDir=queDir(2:end);
                else
                    queDir=[];
                end
                for i=1:size(app.coorOfMasksHexa)
                if length(intersect(cLine,app.indPerCentHexa(i,:)))==2
                    if isnan(dir(i))==true
                        queDir(end+1)=i;
                        [~,ia,ib] = intersect(cLine,app.indPerCentHexa(i,:));
                        if mod(ia(1)+ib(1),2)==0
                            dir(i)=dir(ind);
                        else
                            if dir(ind)==1
                                dir(i)=0;
                            else
                                dir(i)=1;
                            end
                        end
                    end
                end
                end
            end
            app.directions{end+1}=dir;
            cla(app.UIAxes2_4)
            imshow(app.imageP,'Parent',app.UIAxes2_4)
            axis(app.UIAxes2_4,"image")
            hold(app.UIAxes2_4,'on')
            rad=2*mean(app.radii);
            for k=1:length(app.directions)
                dir=app.directions{end};
                for i=1:size(app.coorOfMasksHexa)
                    if dir(i)==0
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,1),1),app.centers(app.indPerCentHexa(i,1),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,2),1),app.centers(app.indPerCentHexa(i,2),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,3),1),app.centers(app.indPerCentHexa(i,3),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,4),1),app.centers(app.indPerCentHexa(i,4),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,5),1),app.centers(app.indPerCentHexa(i,5),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,6),1),app.centers(app.indPerCentHexa(i,6),2),rad,'blue','filled','o');
                    elseif dir(i)==1
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,1),1),app.centers(app.indPerCentHexa(i,1),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,2),1),app.centers(app.indPerCentHexa(i,2),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,3),1),app.centers(app.indPerCentHexa(i,3),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,4),1),app.centers(app.indPerCentHexa(i,4),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,5),1),app.centers(app.indPerCentHexa(i,5),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,6),1),app.centers(app.indPerCentHexa(i,6),2),rad,'yellow','filled','o');
                    end
                end
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: FlipchosenButton
        function FlipchosenButtonPushed(app, event)
            % Flipping the layers in the found hexagonal domain containing the user
            % chosen hull.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            for i=1:length(app.directions)
                dir=app.directions{i};
                if isnan(dir(app.indChosenMask))==false
                    dir(dir==1)=2;
                    dir(dir==0)=1;
                    dir(dir==2)=0;
                    app.directions{i}=dir;
                end
            end
            cla(app.UIAxes2_4)
            imshow(app.imageP,'Parent',app.UIAxes2_4)
            axis(app.UIAxes2_4,"image")
            hold(app.UIAxes2_4,'on')
            rad=2*mean(app.radii);
             for k=1:length(app.directions)
                dir=app.directions{end};
                for i=1:size(app.coorOfMasksHexa)
                    if dir(i)==0
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,1),1),app.centers(app.indPerCentHexa(i,1),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,2),1),app.centers(app.indPerCentHexa(i,2),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,3),1),app.centers(app.indPerCentHexa(i,3),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,4),1),app.centers(app.indPerCentHexa(i,4),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,5),1),app.centers(app.indPerCentHexa(i,5),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,6),1),app.centers(app.indPerCentHexa(i,6),2),rad,'blue','filled','o');
                    elseif dir(i)==1
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,1),1),app.centers(app.indPerCentHexa(i,1),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,2),1),app.centers(app.indPerCentHexa(i,2),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,3),1),app.centers(app.indPerCentHexa(i,3),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,4),1),app.centers(app.indPerCentHexa(i,4),2),rad,'yellow','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,5),1),app.centers(app.indPerCentHexa(i,5),2),rad,'blue','filled','o');
                        scatter(app.UIAxes2_4,app.centers(app.indPerCentHexa(i,6),1),app.centers(app.indPerCentHexa(i,6),2),rad,'yellow','filled','o');
                    end
                end
             end
             app.ReadyLamp.Color='green';
             app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PickparticlesformaskrectangleButton
        function PickparticlesformaskrectangleButtonPushed(app, event)
           % Initiating rectangular hull formation by allowing the user to \
           % choose 4 points using the mouse. 
            hold(app.UIAxes2,'on')
            if isempty(app.centers)==false
                hullT=NaN(4,2);
                app.InstructionsTextArea.Value='Please click as close to the desired particle as you can.';
                fhv = app.UIFigure.HandleVisibility;        % Current status
                app.UIFigure.HandleVisibility = 'callback'; % Temp change (or, 'on')
                set(0, 'CurrentFigure', app.UIFigure)       % Make fig current
                [x1,y1]=ginput(1);
                app.UIFigure.HandleVisibility = fhv;
                dist=sqrt((app.centers(:,1)-x1).^2+(app.centers(:,2)-y1).^2);
                [~,minInd]=min(dist);
                hullT(1,:)=[app.centers(minInd,1),app.centers(minInd,2)];
                viscircles(app.UIAxes2,hullT, app.radii(minInd));
                close(figure(1))
                for i=1:3
                    app.InstructionsTextArea.Value='Please choose next particle in a clockwise direction!';
                    fhv = app.UIFigure.HandleVisibility;        % Current status
                    app.UIFigure.HandleVisibility = 'callback'; % Temp change (or, 'on')
                    set(0, 'CurrentFigure', app.UIFigure)       % Make fig current
                    [x1,y1]=ginput(1);
                    app.UIFigure.HandleVisibility = fhv;
                    dist=sqrt((app.centers(:,1)-x1).^2+(app.centers(:,2)-y1).^2);
                    [~,minInd]=min(dist);
                    hullT(i+1,:)=[app.centers(minInd,1),app.centers(minInd,2)];
                    viscircles(app.UIAxes2,[app.centers(minInd,1),app.centers(minInd,2)], app.radii(minInd));
                    %scatter(app.UIAxes2,app.centers(minInd,1),app.centers(minInd,2),'blue')
                    close(figure(1))
                end
                app.hullTempRect=hullT;
                app.InstructionsTextArea.Value='Thanks :)';
            else
                app.InstructionsTextArea.Value='Please find the locations of the particles in main tab first.';
            end
        end

        % Button pushed function: CreatemaskrectangleButton
        function CreatemaskrectangleButtonPushed(app, event)
           % Creating the rectangular hull from the chosen particles and
           % plotting it on the image. 
            if isempty(app.hullTempRect)==false
                app.hullRect=createHullRect(app,app.hullTempRect);
                iniCent=mean(app.hullTempRect,1);
                iniAng=(atan2(app.hullTempRect(2,2)-app.hullTempRect(1,2),app.hullTempRect(2,1)-app.hullTempRect(1,1))+atan2(app.hullTempRect(3,2)-app.hullTempRect(4,2),app.hullTempRect(3,1)-app.hullTempRect(4,1)))/2;
                hullForPlot=convertToRect(app,app.hullRect,iniCent,iniAng);
                pgon = polyshape(hullForPlot(:,1),hullForPlot(:,2));
                cla(app.UIAxes2)
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                plot(app.UIAxes2,pgon)
            else
                app.InstructionsTextArea.Value='Please find centers for mask creation first.';
            end  
        end

        % Button pushed function: IdentifyorientationsrectangleButton
        function IdentifyorientationsrectangleButtonPushed(app, event)
            % Looking for the best fiiting masks in order to assign directions assuming 2/4 fold symmetry. 
            % First looking for pairs of particles that are closer than the threshold. 
            % Then, finding the particles best fitting with the initial masks, 
            % optimizing masks with respect to these particles and
            % keeping good enough fits (according to the chosen parameters).
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.hullRect)==false 
                 v=app.ParallelcomputationSwitch.Value;
                 v=convertCharsToStrings(v);
                 if v==['Off']
                      identifyRect(app)
                 else
                      identifyRectParallel(app)
                 end
            else
                app.InstructionsTextArea.Value='Please create a mask first.';
            end 
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: OptimizemaskrectangleButton
        function OptimizemaskrectangleButtonPushed(app, event)
            % Finding the optimal rectangular mask based on the founds mask fits, 
            % by looking at mean edges' lengths and repeating the masks location optimization.   
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.indPerCentRect)==false 
                I=~isnan(app.indPerCentRect(:,1));
                indPerCentRectNoNan=app.indPerCentRect(I,:);
                d1=sqrt((app.centers(indPerCentRectNoNan(:,1),1)-app.centers(indPerCentRectNoNan(:,2),1)).^2+(app.centers(indPerCentRectNoNan(:,1),2)-app.centers(indPerCentRectNoNan(:,2),2)).^2);
                d2=sqrt((app.centers(indPerCentRectNoNan(:,3),1)-app.centers(indPerCentRectNoNan(:,2),1)).^2+(app.centers(indPerCentRectNoNan(:,3),2)-app.centers(indPerCentRectNoNan(:,2),2)).^2);
                d3=sqrt((app.centers(indPerCentRectNoNan(:,3),1)-app.centers(indPerCentRectNoNan(:,4),1)).^2+(app.centers(indPerCentRectNoNan(:,3),2)-app.centers(indPerCentRectNoNan(:,4),2)).^2);
                d4=sqrt((app.centers(indPerCentRectNoNan(:,1),1)-app.centers(indPerCentRectNoNan(:,4),1)).^2+(app.centers(indPerCentRectNoNan(:,1),2)-app.centers(indPerCentRectNoNan(:,4),2)).^2);
                d1_3=[d1;d3];
                d2_4=[d2;d4];
                m1=mean(d1_3);
                m2=mean(d2_4);
                app.hullRect=[m1,m2];
                v=app.ParallelcomputationSwitch.Value;
                 v=convertCharsToStrings(v);
                 if v==['Off']
                      identifyRect(app)
                 else
                      identifyRectParallel(app)
                 end
            else
                app.InstructionsTextArea.Value='Please find orientations first.';
            end 
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: SortrectangularButton
        function SortrectangularButtonPushed(app, event)
            % Sorting the found rectangular hulls using the user specified
            % parameters. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.coorOfMasksRectNotSorted)==false
                cutoff=mean(app.radii);
                app.coorOfMasksRect=app.coorOfMasksRectNotSorted;
                app.eOfMasksRect=app.eofNotSortedMasksRect;
                app.indPerCentRect=app.indPerCentRectNotSorted;
                ind=app.eOfMasksRect<=app.MultiplicativerectangularEditField.Value*(-cutoff^2+(cutoff/app.FractionrectangularEditField.Value)^2);
                app.coorOfMasksRect=app.coorOfMasksRect(ind,:);
                app.eOfMasksRect=app.eOfMasksRect(ind);
                app.indPerCentRect=app.indPerCentRect(ind,:);
                [ind2] = keepUniqueMinRect(app);
                app.coorOfMasksRect= app.coorOfMasksRect(ind2==1,:);
                app.eOfMasksRect=app.eOfMasksRect(ind2==1);
                app.indPerCentRect=app.indPerCentRectNotSorted(ind2==1,:);
                cla(app.UIAxes2)
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                plotDirectionColor(app,app.UIAxes2,2)
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Callback function
        function PlotmaskscentersrectButtonPushed(app, event)
            % Plotting the location of the rectangular hulls' centers in the second panel.  
            cla(app.UIAxes2)
            imshow(app.imageP,'Parent',app.UIAxes2)
            axis(app.UIAxes2,"image") 
            hold(app.UIAxes2,'on')
            if isempty(app.coorOfMasksRect)==false
               scatter(app.UIAxes2,app.coorOfMasksRect(:,1),app.coorOfMasksRect(:,2),int32(round(mean(app.radii)/4)),rand(length(app.coorOfMasksRect(:,1)),3),'.')
            end
        end

        % Callback function
        function PlotparticlescentersrectButtonPushed(app, event)
            % Plotting the location of particles' centers in the second panel. 
            hold(app.UIAxes2,'on')
            if isempty(app.centers)==false
                scatter(app.UIAxes2,app.centers(:,1),app.centers(:,2),int32(round(mean(app.radii))),"red",'o','filled')
            end
        end

        % Callback function
        function PlotparticlescentershexaButtonPushed(app, event)
           % Plotting the location of particles' centers in the second panel. 
            hold(app.UIAxes2,'on')
            if isempty(app.centers)==false
                scatter(app.UIAxes2,app.centers(:,1),app.centers(:,2),int32(round(mean(app.radii)/2)),"red",'o','filled')
            end
        end

        % Button pushed function: ShowdivisionButton
        function ShowdivisionButtonPushed(app, event)
            % Showing the specified panel division (for in panel contrast adjustment)
            % on top of the image. 
            cla(app.UIAxes2_2)
            imshow(app.imageP,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image")
            hold(app.UIAxes2_2,'on') 
            pix=app.SizeofpanelinpixelsEditField.Value;
            xH=app.xHigh;
            yH=app.yHigh;
            if pix>min(xH,yH)
                pix=min(xH,yH);
            end
            nX=floor(xH/pix);
            nY=floor(yH/pix);
            for i=1:nX
                plot(app.UIAxes2_2,[i*pix,i*pix],[1,yH],"Color",'b','LineWidth',1)
            end
            for i=1:nY
                plot(app.UIAxes2_2,[1,xH],[i*pix,i*pix],"Color",'b','LineWidth',1)
            end
        end

        % Button pushed function: SaveoutcomeButton
        function SaveoutcomeButtonPushed(app, event)
            % Saving the contrast corrected image.
            if isempty(app.segmentationMask)==false && size(app.segmentationMask,1)==size(app.imageP,1) && size(app.segmentationMask,2)==size(app.imageP,2)
                vIm=app.BackgroundcolorDropDown.Value;
                vIm=convertCharsToStrings(vIm);
                if vIm==['White']
                    app.imagePTemp(app.segmentationMask)=255;
                else
                    app.imagePTemp(app.segmentationMask)=0;
                end
            end
            app.imageP=app.imagePTemp;
            cla(app.UIAxes2_2)
            imshow(app.imageP,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image")
            cla(app.UIAxes_2)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image")
        end

        % Button pushed function: AdaptHistEqinpanelsButton
        function AdaptHistEqinpanelsButtonPushed(app, event)
            % Performing adaptHistEq in panels of user specified size
            % assuming that the contrast should be adjusted locally.
            app.imagePTemp=app.imageP;
            pix=app.SizeofpanelinpixelsEditField.Value;
            xH=app.xHigh;
            yH=app.yHigh;
            if pix>min(xH,yH)
                pix=min(xH,yH);
            end
            nX=floor(xH/pix);
            nY=floor(yH/pix);
            for i=1:nX+1
                xMin=1+(i-1)*pix;
                xMax=i*pix;
                if xMax>xH 
                        xMin=min(1+(i-1)*pix,xH-8);
                        xMax=xH;
                end
                for j=1:nY+1
                    yMin=1+(j-1)*pix;
                    yMax=j*pix;
                     if yMax>yH 
                        yMin=min(1+(j-1)*pix,yH-8);
                        yMax=yH;
                    end
                    app.imagePTemp(yMin:yMax,xMin:xMax)=adapthisteq(app.imagePTemp(yMin:yMax,xMin:xMax));
                end
            end 
            cla(app.UIAxes2_2)
            imshow(app.imagePTemp,'Parent',app.UIAxes2_2)
            axis(app.UIAxes2_2,"image")
            hold(app.UIAxes2_2,'on')
            for i=1:nX
                plot(app.UIAxes2_2,[i*pix,i*pix],[1,yH],"Color",'b','LineWidth',1)
            end
            for i=1:nY
                plot(app.UIAxes2_2,[1,xH],[i*pix,i*pix],"Color",'b','LineWidth',1)
            end
        end

        % Button pushed function: PlotButton_2
        function PlotButton_2Pushed(app, event)
            % Plotting particles' and rectangular hulls' centers per user request. 
            cla(app.UIAxes2_5)
            imshow(app.imageP,'Parent',app.UIAxes2_5)
            axis(app.UIAxes2_5,"image")
            hold(app.UIAxes2_5,'on')
            if isempty(app.centers)==false && app.ParticlesCheckBox.Value==true
                scatter(app.UIAxes2_5,app.centers(:,1),app.centers(:,2),'.red')
            end
            if isempty(app.coorOfMasksRect)==false && app.MaskscentersCheckBox.Value==true
                scatter(app.UIAxes2_5,app.coorOfMasksRect(:,1),app.coorOfMasksRect(:,2),'.green')
            end 
        end

        % Button pushed function: 
        % PlotassociationofparticleswithmaskscentersButton_2
        function PlotassociationofparticleswithmaskscentersButton_2Pushed(app, event)
            % Plotting lines associating particles with each rectangular hulls' center
            % by finding the closest particle to each hull vertex.
            if length(app.eOfMasksRect)>1
                cla(app.UIAxes2_5)
                imshow(app.imageP,'Parent',app.UIAxes2_5)
                axis(app.UIAxes2_5,"image")
                hold(app.UIAxes2_5,'on')
                I=~isnan(app.indPerCentRect(:,1));
                scatter(app.UIAxes2_5,app.coorOfMasksRect(I,1),app.coorOfMasksRect(I,2),'.red')
                I=find(I==1);
                for i=1:length(I)
                    for j=1:4
                        plot(app.UIAxes2_5,[app.coorOfMasksRect(I(i),1),app.centers(app.indPerCentRect(I(i),j),1)],[app.coorOfMasksRect(I(i),2),app.centers(app.indPerCentRect(I(i),j),2)],'green')
                    end
                end
            end
        end

        % Button pushed function: PlotdeviationsfrommeansButton
        function PlotdeviationsfrommeansButtonPushed(app, event)
            % Plotting deviations from mean edges lengths for rectangular
            % hulls.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            cla(app.UIAxes2_5)
            imshow(app.imageP,'Parent',app.UIAxes2_5)
            axis(app.UIAxes2_5,"image")
            hold(app.UIAxes2_5,'on') 
            ax1 = axes;
            colormap(ax1,'gray');
            if size(app.indPerCentRect,1)>0  
                I=~isnan(app.indPerCentRect(:,1));
                indPerCentRectNoNan=app.indPerCentRect(I,:);
                d1=sqrt((app.centers(indPerCentRectNoNan(:,1),1)-app.centers(indPerCentRectNoNan(:,2),1)).^2+(app.centers(indPerCentRectNoNan(:,1),2)-app.centers(indPerCentRectNoNan(:,2),2)).^2);
                d2=sqrt((app.centers(indPerCentRectNoNan(:,3),1)-app.centers(indPerCentRectNoNan(:,2),1)).^2+(app.centers(indPerCentRectNoNan(:,3),2)-app.centers(indPerCentRectNoNan(:,2),2)).^2);
                d3=sqrt((app.centers(indPerCentRectNoNan(:,3),1)-app.centers(indPerCentRectNoNan(:,4),1)).^2+(app.centers(indPerCentRectNoNan(:,3),2)-app.centers(indPerCentRectNoNan(:,4),2)).^2);
                d4=sqrt((app.centers(indPerCentRectNoNan(:,1),1)-app.centers(indPerCentRectNoNan(:,4),1)).^2+(app.centers(indPerCentRectNoNan(:,1),2)-app.centers(indPerCentRectNoNan(:,4),2)).^2);
                d1_3=[d1;d3];
                d2_4=[d2;d4];
                indPerCentRectNoNanD1_3=[indPerCentRectNoNan(:,1),indPerCentRectNoNan(:,2);indPerCentRectNoNan(:,3),indPerCentRectNoNan(:,4)];
                indPerCentRectNoNanD2_4=[indPerCentRectNoNan(:,3),indPerCentRectNoNan(:,2);indPerCentRectNoNan(:,1),indPerCentRectNoNan(:,4)];
                I1=~isoutlier(d1_3,"mean",1,"ThresholdFactor",app.StandarddeviationskeptfrommeanEditField.Value);
                indPerCentRectNoNanD1_3=indPerCentRectNoNanD1_3(I1,:);
                d1_3=d1_3(I1);
                I2=~isoutlier(d2_4,"mean",1,"ThresholdFactor",app.StandarddeviationskeptfrommeanEditField.Value);
                indPerCentRectNoNanD2_4=indPerCentRectNoNanD2_4(I2,:);
                d2_4=d2_4(I2);
                m1=mean(d1_3);
                m2=mean(d2_4);
                app.MeanlengthsTextArea.Value=['Mean long = ',num2str(m1),', mean short = ',num2str(m2)];
                v=app.Switch_2.Value;
                v=convertCharsToStrings(v);
                v2=app.DeviationsfromSwitch_2.Value;
                v2=convertCharsToStrings(v2);
                if v2==['Manual value']
                    m1=app.ManualvaluefordeviationslongEditField.Value;
                    m2=app.ManualvaluefordeviationsshortEditField.Value;
                end
                figure(1)
                a1=subplot(1,2,1);
                if app.LongedgesdeviationsfrommeanCheckBox.Value==true
                    hold on
                    c1=d1_3-m1;
                    cd = colormap('jet');
                    if v==['Symmetric range']
                        md=max(abs(min(c1)),abs(max(c1)));
                        cd = interp1(linspace(-md,md,length(cd)),cd,c1); % map color to y values
                    else
                        cd = interp1(linspace(min(c1),max(c1),length(cd)),cd,c1); % map color to y values
                    end
                    cd = uint8(cd'*255); % need a 4xN uint8 array
                    cd(4,:) = 255; % last column is transparency
                    for i=1:length(d1_3)
                        plot(app.UIAxes2_5,[app.centers(indPerCentRectNoNanD1_3(i,1),1),app.centers(indPerCentRectNoNanD1_3(i,2),1)],[app.centers(indPerCentRectNoNanD1_3(i,1),2),app.centers(indPerCentRectNoNanD1_3(i,2),2)],"Color",cd(1:3,i),'LineWidth',1)
                    end
                    colormap(a1,"jet");
                    if v==['Symmetric range']
                        minCb=-md;
                        maxCb=md;
                    else
                        minCb=min(c1);
                        maxCb=max(c1);
                    end
                    clim(a1,[minCb,maxCb]);
                    cb=colorbar(a1);
                    v3=app.ColorbarscaleSwitch_2.Value;
                    v3=convertCharsToStrings(v3);
                    if v3==['Percentage']
                        per1=100*(minCb)/m1;
                        r1=ceil(per1/5);
                        per2=100*(maxCb)/m1;
                        r2=floor(per2/5);
                        ticks=[];
                        ticksLabels=[];
                        for i=r1:r2
                            ticks=[ticks,i*m1*0.05];
                            ticksLabels=[ticksLabels,string([num2str(i*5),'%'])];
                        end
                        cb.Ticks=ticks;
                        cb.TickLabels=ticksLabels;
                    end
                    set(gca,'xtick',[])
                    set(gca,'xticklabel',[])
                    set(gca,'ytick',[])
                    set(gca,'yticklabel',[])
                    set(gca,'xlim',[0,1])
                    title('Colorbar for long edges')
                end
                if app.ShortedgesdeviationsfrommeanCheckBox.Value==true
                    hold on
                    c2=d2_4-m2;
                    cd2 = colormap('jet');
                    if v==['Symmetric range']
                        md2=max(abs(min(c2)),abs(max(c2)));
                        cd2 = interp1(linspace(-md2,md2,length(cd2)),cd2,c2); % map color to y values
                    else
                        cd2 = interp1(linspace(min(c2),max(c2),length(cd2)),cd2,c2); % map color to y values
                    end
                    cd2 = uint8(cd2'*255); % need a 4xN uint8 array
                    cd2(4,:) = 255; % last column is transparency
                    for i=1:length(d2_4)
                        plot(app.UIAxes2_5,[app.centers(indPerCentRectNoNanD2_4(i,1),1),app.centers(indPerCentRectNoNanD2_4(i,2),1)],[app.centers(indPerCentRectNoNanD2_4(i,1),2),app.centers(indPerCentRectNoNanD2_4(i,2),2)],"Color",cd2(1:3,i),'LineWidth',1)
                    end
                    a2=subplot(1,2,2);
                    colormap(a2,"jet");
                    if v==['Symmetric range']
                        minCb=-md2;
                        maxCb=md2;
                    else
                        minCb=min(c2);
                        maxCb=max(c2);
                    end
                    clim(a2,[minCb,maxCb]);
                    cb=colorbar(a2);
                    v3=app.ColorbarscaleSwitch_2.Value;
                    v3=convertCharsToStrings(v3);
                    if v3==['Percentage']
                        ticks=[];
                        ticksLabels=[];
                        per1=100*(minCb)/m2;
                        r1=ceil(per1/5);
                        per2=100*(maxCb)/m2;
                        r2=floor(per2/5);
                        for i=r1:r2
                            ticks=[ticks,i*m2*0.05];
                            ticksLabels=[ticksLabels,string([num2str(i*5),'%'])];
                        end
                        cb.Ticks=ticks;
                        cb.TickLabels=ticksLabels;
                    end
                    set(gca,'xtick',[])
                    set(gca,'xticklabel',[])
                    set(gca,'ytick',[])
                    set(gca,'yticklabel',[])
                    set(gca,'xlim',[0,1])
                    title('Colorbar for short edges')
                end
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: AutoparametersButton
        function AutoparametersButtonPushed(app, event)
            % Searching for optimal parameters for particle detection in the
            % range specified by the initial parametes chosen by the user.
            % Auto or manual thresholding of the image depends on the
            % user's choice.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            errordlg('Notice that autoparameters does not apply filtration so the results may vary!');
            drawnow()
            v=app.Switch_4.Value;
            v=convertCharsToStrings(v);
            if v==['Bright']
                v='bright';
            elseif v==['Dark']
                v='dark';
            end
            v2=app.ThresholdDropDown.Value;
            v2=convertCharsToStrings(v2);
            if v2~=['Scan']
                minR=app.MinradiusEditField.Value;
                maxR=app.MaxradiusEditField.Value;
                if v2==['Auto threshold']
                    % Initial broad search for sensitivity
                    optimalIni=0.1;
                    optiNum=sensOpti(app,0.1,app.imageP,minR,maxR,v);
                    iniSens=0.2:0.1:0.9;
                    for i=1:length(iniSens)
                        curNum=sensOpti(app,iniSens(i),app.imageP,app.MinradiusEditField.Value,app.MaxradiusEditField.Value,v);
                        if curNum>optiNum
                            optiNum=curNum;
                            optimalIni=iniSens(i);
                        end
                    end
                    % Finer search around initialy found parameter
                    iniSens=-0.095:0.005:0.095;
                    iniSens=iniSens+optimalIni;
                    for i=1:length(iniSens)
                        curNum=sensOpti(app,iniSens(i),app.imageP,app.MinradiusEditField.Value,app.MaxradiusEditField.Value,v);
                        if curNum>optiNum
                            optiNum=curNum;
                            optimalIni=iniSens(i);
                        end
                    end
                    app.SensitivityEditField.Value=optimalIni;
                    optimalSensitivity=optimalIni;
                    optimalNumber=optiNum;
                    cond1=0;
                    cond2=0;
                    while (cond1==0||cond2==0) && minR<=(maxR-2)
                        if cond1 ==0
                            % Finer search around initialy found parameter
                            iniSens=-0.095:0.005:0.095;
                            iniSens=iniSens+optimalIni;
                            iniSens=iniSens(iniSens>=0);
                            iniSens=iniSens(iniSens<=1);
                            for i=1:length(iniSens)
                                curNum=sensOpti(app,iniSens(i),app.imageP,minR+1,maxR,v);
                                if curNum>optiNum
                                    optiNum=curNum;
                                    optimalIni=iniSens(i);
                                end
                            end
                            if optiNum>=optimalNumber
                                optimalNumber=optiNum;
                                optimalSensitivity=optimalIni;
                                minR=minR+1;
                            else
                                cond1=1;
                            end
                        end
                        if cond2 ==0
                            % Finer search around initialy found parameter
                            iniSens=-0.095:0.005:0.095;
                            iniSens=iniSens+optimalIni;
                            iniSens=iniSens(iniSens>=0);
                            iniSens=iniSens(iniSens<=1);
                            for i=1:length(iniSens)
                                curNum=sensOpti(app,iniSens(i),app.imageP,minR,maxR-1,v);
                                if curNum>optiNum
                                    optiNum=curNum;
                                    optimalIni=iniSens(i);
                                end
                            end
                            if optiNum>=optimalNumber
                                optimalNumber=optiNum;
                                optimalSensitivity=optimalIni;
                                maxR=maxR-1;
                            else
                                cond2=1;
                            end
                        end
                    end
                elseif v2==['Manual']
                    % Initial broad search for sensitivity
                    optimalIni=0.1;
                    manualIni=0.1;
                    optiNum=sens_manual_Opti(app,0.1,0.1,app.imageP,minR,maxR,v);
                    iniSens=0.2:0.1:1;
                    iniManual=0.2:0.1:1;
                    for i=1:length(iniSens)
                        for j=1:length(iniManual)
                            curNum=sens_manual_Opti(app,iniSens(i),iniManual(j),app.imageP,app.MinradiusEditField.Value,app.MaxradiusEditField.Value,v);
                            if curNum>optiNum
                                optiNum=curNum;
                                optimalIni=iniSens(i);
                                manualIni=iniManual(j);
                            end
                        end
                    end
                    % Finer search around initialy found parameter
                    iniSens=-0.095:0.005:0.095;
                    iniSens=iniSens+optimalIni;
                    iniManual=-0.095:0.005:0.095;
                    iniManual=iniManual+manualIni;
                    iniSens=iniSens(iniSens>=0);
                    iniSens=iniSens(iniSens<=1);
                    iniManual=iniManual(iniManual>=0);
                    iniManual=iniManual(iniManual<=1);
                    for i=1:length(iniSens)
                        curNum=sens_manual_Opti(app,iniSens(i),manualIni,app.imageP,app.MinradiusEditField.Value,app.MaxradiusEditField.Value,v);
                        if curNum>optiNum
                            optiNum=curNum;
                            optimalIni=iniSens(i);
                        end
                    end
                    for j=1:length(iniManual)
                        curNum=sens_manual_Opti(app,optimalIni,iniManual(j),app.imageP,app.MinradiusEditField.Value,app.MaxradiusEditField.Value,v);
                        if curNum>optiNum
                            optiNum=curNum;
                            manualIni=iniManual(j);
                        end
                    end
                    optimalSensitivity=optimalIni;
                    optimalNumber=optiNum;
                    optimalManual=manualIni;
                    cond1=0;
                    cond2=0;
                    while (cond1==0||cond2==0) && minR<=(maxR-2)
                        if cond1 ==0
                            % Finer search around initialy found parameter
                            iniSens=-0.095:0.005:0.095;
                            iniSens=iniSens+optimalIni;
                            iniSens=iniSens(iniSens>=0);
                            iniSens=iniSens(iniSens<=1);
                            iniManual=-0.095:0.005:0.095;
                            iniManual=iniManual+manualIni;
                            iniManual=iniManual(iniManual>=0);
                            iniManual=iniManual(iniManual<=1);
                            for i=1:length(iniSens)
                                curNum=sens_manual_Opti(app,iniSens(i),manualIni,app.imageP,minR+1,maxR,v);
                                if curNum>optiNum
                                    optiNum=curNum;
                                    optimalIni=iniSens(i);
                                end
                            end
                            for j=1:length(iniManual)
                                curNum=sens_manual_Opti(app,optimalIni,iniManual(j),app.imageP,minR+1,maxR,v);
                                if curNum>optiNum
                                    optiNum=curNum;
                                    manualIni=iniManual(j);
                                end
                            end
                            if optiNum>=optimalNumber
                                optimalNumber=optiNum;
                                optimalSensitivity=optimalIni;
                                optimalManual=manualIni;
                                minR=minR+1;
                            else
                                cond1=1;
                            end
                        end
                        if cond2 ==0
                            % Finer search around initialy found parameter
                            iniSens=-0.095:0.005:0.095;
                            iniSens=iniSens+optimalIni;
                            iniSens=iniSens(iniSens>=0);
                            iniSens=iniSens(iniSens<=1);
                            iniManual=-0.095:0.005:0.095;
                            iniManual=iniManual+manualIni;
                            iniManual=iniManual(iniManual>=0);
                            iniManual=iniManual(iniManual<=1);
                            length(iniManual)
                            for i=1:length(iniSens)
                                curNum=sens_manual_Opti(app,iniSens(i),manualIni,app.imageP,minR,maxR-1,v);
                                if curNum>optiNum
                                    optiNum=curNum;
                                    optimalIni=iniSens(i);
                                end
                            end
                            for j=1:length(iniManual)
                                curNum=sens_manual_Opti(app,optimalIni,iniManual(j),app.imageP,minR,maxR-1,v);
                                if curNum>optiNum
                                    optiNum=curNum;
                                    manualIni=iniManual(j);
                                end
                            end
                            if optiNum>=optimalNumber
                                optimalNumber=optiNum;
                                optimalSensitivity=optimalIni;
                                optimalManual=manualIni;
                                maxR=maxR-1;
                            else
                                cond2=1;
                            end
                        end
                    end
                    app.ManualinitialEditField.Value=optimalManual;
                end
                app.SensitivityEditField.Value= optimalSensitivity;
                app.MinradiusEditField.Value=minR;
                app.MaxradiusEditField.Value=maxR;
                app.centers=[];
                app.radii=[];
                app.particlesMetric=[];
                if v2==['Auto threshold']
                    [app.centers, app.radii,app.particlesMetric] = imfindcircles(app.imageP,[app.MinradiusEditField.Value app.MaxradiusEditField.Value],'ObjectPolarity',v,'Method',app.particlesFindingMethod,'Sensitivity',app.SensitivityEditField.Value);
                elseif v2==['Manual']
                    [app.centers, app.radii,app.particlesMetric] = imfindcircles(app.imageP,[app.MinradiusEditField.Value app.MaxradiusEditField.Value],'ObjectPolarity',v,'Method',app.particlesFindingMethod,'Sensitivity',app.SensitivityEditField.Value,'EdgeThreshold',app.ManualinitialEditField.Value);
                end
                if isempty(app.radii)==false
                    [app.centers,app.radii,app.particlesMetric]=overlapCleaning(app,app.centers,app.radii,app.particlesMetric);
                end
                cla(app.UIAxes_3)
                imshow(app.imageP,'Parent',app.UIAxes_3)
                axis(app.UIAxes_3,"image")
                hold(app.UIAxes_3,'on')
                try
                    viscircles(app.UIAxes_3,app.centers, app.radii,'EdgeColor','b');
                catch
                    errordlg('No Particles found');
                end
                close(figure(1))
                hold(app.UIAxes_3,'on')
                try
                    scatter(app.UIAxes_3,app.centers(:,1),app.centers(:,2),'.red')
                catch
                    errordlg('No Particles found');
                end
                app.ParticlesedgesCheckBox.Value=true;
                app.ParticlescentersCheckBox_2.Value=true;
            else
                errordlg('Auto parameters does not work with scan mode for the threshold.');
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PickpointsinmiddleimageButton
        function PickpointsinmiddleimageButtonPushed(app, event)
            % Measuring the distance between two user-picked points and plotting the
            % measured distance. 
            cla(app.UIAxes_2)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image") 
            hold(app.UIAxes_2,'on')
            fhv = app.UIFigure.HandleVisibility;        % Current status
             app.UIFigure.HandleVisibility = 'callback'; % Temp change (or, 'on')
             set(0, 'CurrentFigure', app.UIFigure)       % Make fig current
             indices1=floor(ginput(1));
             app.UIFigure.HandleVisibility = fhv;
             scatter(app.UIAxes_2,indices1(1),indices1(2),'.red')
             fhv = app.UIFigure.HandleVisibility;        % Current status
             app.UIFigure.HandleVisibility = 'callback'; % Temp change (or, 'on')
             set(0, 'CurrentFigure', app.UIFigure)       % Make fig current
             indices2=floor(ginput(1));
             app.UIFigure.HandleVisibility = fhv;
             scatter(app.UIAxes_2,indices2(1),indices2(2),'.red')
             plot(app.UIAxes_2,[indices1(1),indices2(1)],[indices1(2),indices2(2)],'LineStyle','--')
             dist=sqrt((indices1(1)-indices2(1))^2+(indices1(2)-indices2(2))^2);
             app.DistanceEditField.Value=dist;
        end

        % Button pushed function: CentersoptimizationButton
        function CentersoptimizationButtonPushed(app, event)
            % Performing particles' center optimization in order to optimize for the
            % particles' centers. Calculating the score by summation of
            % pixels in a disk filter and allowing movement by 1/8 the
            % particle radius. Padding the array at the boundaries. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.radii)==false
                meanR=mean(app.radii);
                diskFact=1;
                diskR=round(meanR*diskFact);
                filt=fspecial('disk',diskR);
                filterSize=length(filt);
                v=app.Switch_4.Value;
                v=convertCharsToStrings(v);
                im=app.imageP;
                halfFilt=floor(filterSize/2);
                cut=(meanR/8);
                if v==['Dark']
                    im=256*ones(size(im,1),size(im,2))-double(im);
                    if size(app.segmentationMask)==size(im)
                       im(app.segmentationMask)=0;
                    end
                    im = padarray(double(im),[filterSize,filterSize],0,'both');
                else
                    if size(app.segmentationMask)==size(im)
                       im(app.segmentationMask)=0;
                    end
                    im = padarray(double(im),[filterSize,filterSize],0,'both');
                end
                options=optimoptions('fmincon','MaxFunctionEvaluations',10^6,'StepTolerance',10^(-4),'OptimalityTolerance',10^(-5),'MaxIterations',10^6);
                parpool('local', maxNumCompThreads);
                cent=app.centers;
                im=parallel.pool.Constant(im);
                met=zeros(size(cent,1),1);
                parfor i=1:size(cent,1)
                    coorIniLoc=cent(i,:);
                    iniLocation=(coorIniLoc(:)-floor(coorIniLoc(:)))';
                    iniLocation=iniLocation+filterSize;
                    imCut=double(im.Value(floor(coorIniLoc(2)):floor(coorIniLoc(2))+2*filterSize,floor(coorIniLoc(1)):floor(coorIniLoc(1))+2*filterSize));
                    [centShift,metVal]=fmincon(@filterOptimization,iniLocation,[],[],[],[],iniLocation-cut,iniLocation+cut,[],options,imCut,filt,halfFilt);
                    cent(i,:)=cent(i,:)+centShift-iniLocation-1/2;
                    met(i,1)=-metVal
                end
                delete(gcp('nocreate'));
            end
            matOrd=[cent,app.radii,met];
            matOrd=sortrows(matOrd,4,"descend");
            app.centers=matOrd(:,1:2);
            app.radii=matOrd(:,3);
            app.particlesMetric=matOrd(:,4);
            cla(app.UIAxes_3)
            imshow(app.imageP,'Parent',app.UIAxes_3)
            axis(app.UIAxes_3,"image")
            hold(app.UIAxes_3,'on')
            if isempty(app.radii)==false
                [app.centers,app.radii,app.particlesMetric]=overlapCleaning(app,app.centers,app.radii,app.particlesMetric);
            end
            try
                viscircles(app.UIAxes_3,app.centers, app.radii,'EdgeColor','b');
            catch
                errordlg('No Particles found');
            end
            close(figure(1))
            hold(app.UIAxes_3,'on')
            scatter(app.UIAxes_3,app.centers(:,1),app.centers(:,2),'.red')
            app.ParticlesedgesCheckBox.Value=true;
            app.ParticlescentersCheckBox_2.Value=true;
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
            app.UIFigure.Visible='off';
            app.UIFigure.Visible = 'on';
        end

        % Button pushed function: PlotdeviationsButton
        function PlotdeviationsButtonPushed(app, event)
            % Plotting deviations from mean edge length for hexagonal
            % hulls.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            cla(app.UIAxes2_4)
            imshow(app.imageP,'Parent',app.UIAxes2_4)
            axis(app.UIAxes2_4,"image")
            hold(app.UIAxes2_4,'on')
            ax1 = axes;
            colormap(ax1,'gray');
            if size(app.indPerCentHexa,1)>0  
                I=~isnan(app.indPerCentHexa(:,1));
                indPerCentNoNan=app.indPerCentHexa(I,:);
                d1=sqrt((app.centers(indPerCentNoNan(:,1),1)-app.centers(indPerCentNoNan(:,2),1)).^2+(app.centers(indPerCentNoNan(:,1),2)-app.centers(indPerCentNoNan(:,2),2)).^2);
                d2=sqrt((app.centers(indPerCentNoNan(:,2),1)-app.centers(indPerCentNoNan(:,3),1)).^2+(app.centers(indPerCentNoNan(:,2),2)-app.centers(indPerCentNoNan(:,3),2)).^2);
                d3=sqrt((app.centers(indPerCentNoNan(:,3),1)-app.centers(indPerCentNoNan(:,4),1)).^2+(app.centers(indPerCentNoNan(:,3),2)-app.centers(indPerCentNoNan(:,4),2)).^2);
                d4=sqrt((app.centers(indPerCentNoNan(:,4),1)-app.centers(indPerCentNoNan(:,5),1)).^2+(app.centers(indPerCentNoNan(:,4),2)-app.centers(indPerCentNoNan(:,5),2)).^2);
                d5=sqrt((app.centers(indPerCentNoNan(:,5),1)-app.centers(indPerCentNoNan(:,6),1)).^2+(app.centers(indPerCentNoNan(:,5),2)-app.centers(indPerCentNoNan(:,6),2)).^2);
                d6=sqrt((app.centers(indPerCentNoNan(:,6),1)-app.centers(indPerCentNoNan(:,1),1)).^2+(app.centers(indPerCentNoNan(:,6),2)-app.centers(indPerCentNoNan(:,1),2)).^2);
                dall=[d1;d2;d3;d4;d5;d6];
                indPerCentRectNoNanDall=[indPerCentNoNan(:,1),indPerCentNoNan(:,2);indPerCentNoNan(:,2),indPerCentNoNan(:,3);indPerCentNoNan(:,3),indPerCentNoNan(:,4);indPerCentNoNan(:,4),indPerCentNoNan(:,5);indPerCentNoNan(:,5),indPerCentNoNan(:,6);indPerCentNoNan(:,6),indPerCentNoNan(:,1)];
                I1=~isoutlier(dall,"mean",1,"ThresholdFactor",app.StandarddeviationskeptfrommeanEditField_2.Value);
                indPerCentRectNoNanDall=indPerCentRectNoNanDall(I1,:);
                dall=dall(I1);
                m1=mean(dall);
                app.MeanedgeTextArea.Value=['Mean edge = ',num2str(m1)];
                v=app.Switch_5.Value;
                v=convertCharsToStrings(v);
                v2=app.DeviationsfromSwitch.Value;
                v2=convertCharsToStrings(v2);
                if v2==['Manual value']
                    m1=app.ManualvaluefordeviationsEditField.Value;
                end
                figure(1)
                a1=subplot(1,1,1);
                hold on
                c1=dall-m1;
                cd = colormap('jet');
                if v==['Symmetric range']
                    md=max(abs(min(c1)),abs(max(c1)));
                    cd = interp1(linspace(-md,md,length(cd)),cd,c1); % map color to y values
                else
                    cd = interp1(linspace(min(c1),max(c1),length(cd)),cd,c1); % map color to y values
                end
                cd = uint8(cd'*255); % need a 4xN uint8 array
                cd(4,:) = 255; % last column is transparency
                for i=1:length(dall)
                    plot(app.UIAxes2_4,[app.centers(indPerCentRectNoNanDall(i,1),1),app.centers(indPerCentRectNoNanDall(i,2),1)],[app.centers(indPerCentRectNoNanDall(i,1),2),app.centers(indPerCentRectNoNanDall(i,2),2)],"Color",cd(1:3,i),'LineWidth',1)
                end
                colormap(a1,"jet");
                if v==['Symmetric range']
                    minCb=-md;
                    maxCb=md;
                else
                    minCb=min(c1);
                    maxCb=max(c1);
                end
                clim(a1,[minCb,maxCb]);
                cb=colorbar(a1);
                v3=app.ColorbarscaleSwitch.Value;
                v3=convertCharsToStrings(v3);
                if v3==['Percentage']
                    ticks=[];
                    ticksLabels=[];
                    per1=100*(minCb)/m1;
                    r1=ceil(per1/5);
                    per2=100*(maxCb)/m1;
                    r2=floor(per2/5);
                    for i=r1:r2
                        ticks=[ticks,i*m1*0.05];
                        ticksLabels=[ticksLabels,string([num2str(i*5),'%'])];
                    end
                    cb.Ticks=ticks;
                    cb.TickLabels=ticksLabels;
                end
                set(gca,'xtick',[])
                set(gca,'xticklabel',[])
                set(gca,'ytick',[])
                set(gca,'yticklabel',[])
                set(gca,'xlim',[0,1])
                title('Colorbar for outer edges')
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PickparticlesformasktriangularButton
        function PickparticlesformasktriangularButtonPushed(app, event)
          % Initiating triangular hull formation by allowing the user to choose 3
           % points using the mouse. 
            hold(app.UIAxes2,'on')
            if isempty(app.centers)==false
                app.InstructionsTextArea.Value='Please click as close to a particle.';
                  fhv = app.UIFigure.HandleVisibility;        
                    app.UIFigure.HandleVisibility = 'callback'; 
                    set(0, 'CurrentFigure', app.UIFigure)      
                    [x1,y1]=ginput(1);
                    app.UIFigure.HandleVisibility = fhv;
                    dist=sqrt((app.centers(:,1)-x1).^2+(app.centers(:,2)-y1).^2);
                    [~,minInd]=min(dist);
                    hullT=[app.centers(minInd,1),app.centers(minInd,2)];
                    viscircles(app.UIAxes2,hullT, app.radii(minInd));
                    close(figure(1))
                for i=1:2
                    app.InstructionsTextArea.Value=['Please choose next particle.'];
                    fhv = app.UIFigure.HandleVisibility;        
                    app.UIFigure.HandleVisibility = 'callback'; 
                    set(0, 'CurrentFigure', app.UIFigure)       
                    [x1,y1]=ginput(1);
                    app.UIFigure.HandleVisibility = fhv;
                    dist=sqrt((app.centers(:,1)-x1).^2+(app.centers(:,2)-y1).^2);
                    [~,minInd]=min(dist);
                    hullT(i+1,1:2)=[app.centers(minInd,1),app.centers(minInd,2)];
                    viscircles(app.UIAxes2,[app.centers(minInd,1),app.centers(minInd,2)], app.radii(minInd));
                    close(figure(1))
                end
                app.hullTempTri=hullT;
                app.InstructionsTextArea.Value='Thanks :)';
            else
                app.InstructionsTextArea.Value='Please find the locations of the particles in main tab first.';
            end
        end

        % Button pushed function: CreatemasktriangularButton
        function CreatemasktriangularButtonPushed(app, event)
           % Creating the triangular hull from the chosen particles and
           % plotting it on the image. 
            if isempty(app.hullTempTri)==false
                app.hullTri=createHullTri(app,app.hullTempTri);
                iniCent=mean(app.hullTempTri,1);
                iniAng=atan2(app.hullTempTri(1,2)-iniCent(2),app.hullTempTri(1,1)-iniCent(1))+3*pi/2;
                hullForPlot=convertToTri(app,app.hullTri,iniCent,iniAng);
                pgon = polyshape(hullForPlot(:,1),hullForPlot(:,2));
                cla(app.UIAxes2)
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                plot(app.UIAxes2,pgon)
            else
                app.InstructionsTextArea.Value='Please find centers for hull creation first.';
            end    
        end

        % Button pushed function: IdentifyorientationstriangularButton
        function IdentifyorientationstriangularButtonPushed(app, event)
            % Looking for best fiiting hulls in order to assign directions assuming 6 fold symmetry. 
            % First looking for pairs of particles that are closer than the threshold. 
            % Then, screening masks with edges oriented along a pair of vertices according to MLS,
            % finding the third vertex per mask, optimizes mask position and keeps good enough 
            % fits (according to the chosen parameters). 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.hullTri)==false
                 v=app.ParallelcomputationSwitch.Value;
                 v=convertCharsToStrings(v);
                 if v==['Off']
                      identifyTri(app)
                 else
                      identifyTriParallel(app)
                 end
            else
                app.InstructionsTextArea.Value='Please create a mask first.';
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: OptimizemasktriangularButton
        function OptimizemasktriangularButtonPushed(app, event)
            % Finding the optimal mask based on the founds mask fits by looking
            % at the mean edge length and repeating the masks location optimization.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.indPerCentTri)==false
                I=~isnan(app.indPerCentTri(:,1));
                indPerCentTriNoNan=app.indPerCentTri(I,:);
                d1=sqrt((app.centers(indPerCentTriNoNan(:,1),1)-app.centers(indPerCentTriNoNan(:,2),1)).^2+(app.centers(indPerCentTriNoNan(:,1),2)-app.centers(indPerCentTriNoNan(:,2),2)).^2);
                d2=sqrt((app.centers(indPerCentTriNoNan(:,3),1)-app.centers(indPerCentTriNoNan(:,2),1)).^2+(app.centers(indPerCentTriNoNan(:,3),2)-app.centers(indPerCentTriNoNan(:,2),2)).^2);
                d3=sqrt((app.centers(indPerCentTriNoNan(:,3),1)-app.centers(indPerCentTriNoNan(:,1),1)).^2+(app.centers(indPerCentTriNoNan(:,3),2)-app.centers(indPerCentTriNoNan(:,1),2)).^2);
                d=[d1;d2;d3];
                m1=mean(d);
                app.hullTri=m1;
                v=app.ParallelcomputationSwitch.Value;
                v=convertCharsToStrings(v);
                if v==['Off']
                    identifyTri(app)
                else
                    identifyTriParallel(app)
                end
            else
                app.InstructionsTextArea.Value='Please find orientations first.';
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: SorttriangularButton
        function SorttriangularButtonPushed(app, event)
            % Sorting the found triangular hulls using the user specified
            % parameters. 
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy'; 
            drawnow()
            if isempty(app.coorOfMasksTriNotSorted)==false
                cutoff=mean(app.radii);
                app.coorOfMasksTri=app.coorOfMasksTriNotSorted;
                app.eOfMasksTri=app.eofNotSortedMasksTri;
                app.indPerCentTri=app.indPerCentTriNotSorted;
                ind=app.eOfMasksTri<=app.MultiplicativetriangularEditField.Value*(-cutoff^2+(cutoff/app.FractiontriangularEditField.Value).^2);
                app.coorOfMasksTri=app.coorOfMasksTri(ind,:);
                app.eOfMasksTri=app.eOfMasksTri(ind);
                app.indPerCentTri=app.indPerCentTri(ind,:);
                [ind2] = keepUniqueMinTri(app);
                app.coorOfMasksTri= app.coorOfMasksTri(ind2==1,:);
                app.eOfMasksTri=app.eOfMasksTri(ind2==1);
                app.indPerCentTri=app.indPerCentTriNotSorted(ind2==1,:);
                cla(app.UIAxes2)
                imshow(app.imageP,'Parent',app.UIAxes2)
                axis(app.UIAxes2,"image")
                hold(app.UIAxes2,'on')
                plotDirectionColor(app,app.UIAxes2,3)
            end 
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Callback function
        function PlotmaskscenterstriButtonPushed(app, event)
            % Plotting the location of the triangular hulls' centers in the second panel.   
            cla(app.UIAxes2)
             imshow(app.imageP,'Parent',app.UIAxes2)
             axis(app.UIAxes2,"image") 
             hold(app.UIAxes2,'on')
             if isempty(app.coorOfMasksTri)==false
                scatter(app.UIAxes2,app.coorOfMasksTri(:,1),app.coorOfMasksTri(:,2),int(round(mean(app.radii)/10)),rand(length(app.coorOfMasksTri(:,1)),3),'.')
             end
        end

        % Callback function
        function PlotparticlescenterstriButtonPushed(app, event)
            % Plotting the location of the Particles' centers in the second panel.  
            hold(app.UIAxes2,'on')
            if isempty(app.centers)==false
                scatter(app.UIAxes2,app.centers(:,1),app.centers(:,2),'.red')
            end
        end

        % Button pushed function: SaveimageButton
        function SaveimageButtonPushed(app, event)
            % Saving an image from a user-specified axes (or whole app
            % screen) to file.
            v=app.ImagetosaveDropDown.Value;
            v=convertCharsToStrings(v);
            if v~=['App screen']
                filter = {'*.emf';'*.png';'*.jpg';'*.pdf';'*.jpeg'};
                try
                [file, path] = uiputfile(filter);
                if v==['Main right (layered)'] && isempty(path)==false
                    exportgraphics(app.UIAxes_3,fullfile(path,file),ContentType="vector")
                elseif v==['Main center (proccessed)'] && isempty(path)==false
                    exportgraphics(app.UIAxes_2,fullfile(path,file),ContentType="vector")
                elseif v==['Main left'] && isempty(path)==false
                    exportgraphics(app.UIAxes,fullfile(path,file),ContentType="vector")
                elseif v==['Masks'] && isempty(path)==false
                    exportgraphics(app.UIAxes2,fullfile(path,file),ContentType="vector")
                elseif v==['Orientations analysis'] && isempty(path)==false
                    exportgraphics(app.UIAxes2_3,fullfile(path,file),ContentType="vector")
                elseif v==['Tessellation & strains - hexagonal'] && isempty(path)==false
                    exportgraphics(app.UIAxes2_4,fullfile(path,file),ContentType="vector")
                elseif v==['Strains - rectangular & triangular'] && isempty(path)==false
                    exportgraphics(app.UIAxes2_5,fullfile(path,file),ContentType="vector")
                end
                catch

                end
            else 
                filter = {'*.png';'*.jpg';'*.pdf';'*.jpeg'};
                try
                [file, path] = uiputfile(filter);
                if isempty(path)==false 
                    exportapp(app.UIFigure,fullfile(path,file))
                end
                catch

                end
            end   
            app.UIFigure.Visible='off';
            app.UIFigure.Visible = 'on';
        end

        % Button pushed function: ClearButton
        function ClearButtonPushed(app, event)
            % Replotting the image on the second panel (without other layers).
            cla(app.UIAxes_2)
            imshow(app.imageP,'Parent',app.UIAxes_2)
            axis(app.UIAxes_2,"image") 
            hold(app.UIAxes_2,'on')  
        end

        % Button pushed function: PlotButton_3
        function PlotButton_3Pushed(app, event)
            % Plotting particles' and triangular hulls' centers per users' request. 
            cla(app.UIAxes2_5)
            imshow(app.imageP,'Parent',app.UIAxes2_5)
            axis(app.UIAxes2_5,"image")
            hold(app.UIAxes2_5,'on')
            if isempty(app.centers)==false && app.ParticlescentersCheckBox_3.Value==true
                scatter(app.UIAxes2_5,app.centers(:,1),app.centers(:,2),'.red')
            end
            if isempty(app.coorOfMasksTri)==false && app.MaskscentersTriangularCheckBox.Value==true
                scatter(app.UIAxes2_5,app.coorOfMasksTri(:,1),app.coorOfMasksTri(:,2),'.green')
            end  
        end

        % Button pushed function: 
        % PlotassociationofparticleswithmaskscentersButton_3
        function PlotassociationofparticleswithmaskscentersButton_3Pushed(app, event)
            % Plotting lines associating particles with each triangular hull's center
            % by finding the closest particle to each hull vertex.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            cla(app.UIAxes2_5)
            imshow(app.imageP,'Parent',app.UIAxes2_5)
            axis(app.UIAxes2_5,"image")
            hold(app.UIAxes2_5,'on')
            for i=1:size(app.coorOfMasksTri)
                if isnan(app.indPerCentTri(i,1))==false
                    for j=1:3
                        plot(app.UIAxes2_5,[app.coorOfMasksTri(i,1),app.centers(app.indPerCentTri(i,j),1)],[app.coorOfMasksTri(i,2),app.centers(app.indPerCentTri(i,j),2)],'green')
                    end
                    scatter(app.UIAxes2_5,app.coorOfMasksTri(i,1),app.coorOfMasksTri(i,2),'.red')
                end
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: PlotdeviationsfrommeansButton_3
        function PlotdeviationsfrommeansButton_3Pushed(app, event)
            % Plotting deviations from mean edge length for triangular hulls.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            cla(app.UIAxes2_5)
            imshow(app.imageP,'Parent',app.UIAxes2_5)
            axis(app.UIAxes2_5,"image")
            hold(app.UIAxes2_5,'on') 
            ax1 = axes;
            colormap(ax1,'gray');
            if size(app.indPerCentTri,1)>0  
                I=~isnan(app.indPerCentTri(:,1));
                indPerCentNoNan=app.indPerCentTri(I,:);
                d1=sqrt((app.centers(indPerCentNoNan(:,1),1)-app.centers(indPerCentNoNan(:,2),1)).^2+(app.centers(indPerCentNoNan(:,1),2)-app.centers(indPerCentNoNan(:,2),2)).^2);
                d2=sqrt((app.centers(indPerCentNoNan(:,2),1)-app.centers(indPerCentNoNan(:,3),1)).^2+(app.centers(indPerCentNoNan(:,2),2)-app.centers(indPerCentNoNan(:,3),2)).^2);
                d3=sqrt((app.centers(indPerCentNoNan(:,3),1)-app.centers(indPerCentNoNan(:,1),1)).^2+(app.centers(indPerCentNoNan(:,3),2)-app.centers(indPerCentNoNan(:,1),2)).^2);
                dall=[d1;d2;d3];
                indPerCentRectNoNanDall=[indPerCentNoNan(:,1),indPerCentNoNan(:,2);indPerCentNoNan(:,2),indPerCentNoNan(:,3);indPerCentNoNan(:,3),indPerCentNoNan(:,1)];
                I1=~isoutlier(dall,"mean",1,"ThresholdFactor",app.StandarddeviationskeptfrommeanEditField_3.Value);
                indPerCentRectNoNanDall=indPerCentRectNoNanDall(I1,:);
                dall=dall(I1);
                m1=mean(dall);
                app.MeanlengthsTextArea_2.Value=['Mean edge = ',num2str(m1)];
                v=app.Switch_6.Value;
                v=convertCharsToStrings(v);
                v2=app.DeviationsfromSwitch_3.Value;
                v2=convertCharsToStrings(v2);
                if v2==['Manual value']
                    m1=app.ManualvaluefordeviationsEditField_2.Value;
                end
                figure(1)
                a1=subplot(1,1,1);
                hold on
                c1=dall-m1;
                cd = colormap('jet');
                if v==['Symmetric range']
                    md=max(abs(min(c1)),abs(max(c1)));
                    cd = interp1(linspace(-md,md,length(cd)),cd,c1); % map color to y values
                else
                    cd = interp1(linspace(min(c1),max(c1),length(cd)),cd,c1); % map color to y values
                end
                cd = uint8(cd'*255); % need a 4xN uint8 array
                cd(4,:) = 255; % last column is transparency
                for i=1:length(dall)
                    plot(app.UIAxes2_5,[app.centers(indPerCentRectNoNanDall(i,1),1),app.centers(indPerCentRectNoNanDall(i,2),1)],[app.centers(indPerCentRectNoNanDall(i,1),2),app.centers(indPerCentRectNoNanDall(i,2),2)],"Color",cd(1:3,i),'LineWidth',1)
                end
                colormap(a1,"jet");
                if v==['Symmetric range']
                    minCb=-md;
                    maxCb=md;
                else
                    minCb=min(c1);
                    maxCb=max(c1);
                end
                clim(a1,[minCb,maxCb]);
                cb=colorbar(a1);
                v3=app.ColorbarscaleSwitch_3.Value;
                v3=convertCharsToStrings(v3);
                if v3==['Percentage']
                    ticks=[];
                    ticksLabels=[];
                    per1=100*(minCb)/m1;
                    r1=ceil(per1/5);
                    per2=100*(maxCb)/m1;
                    r2=floor(per2/5);
                    for i=r1:r2
                        ticks=[ticks,i*m1*0.05];
                        ticksLabels=[ticksLabels,string([num2str(i*5),'%'])];
                    end
                    cb.Ticks=ticks;
                    cb.TickLabels=ticksLabels;
                end
                set(gca,'xtick',[])
                set(gca,'xticklabel',[])
                set(gca,'ytick',[])
                set(gca,'yticklabel',[])
                set(gca,'xlim',[0,1])
                title('Colorbar for outer edges')
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Value changed function: ParallelcomputationSwitch
        function ParallelcomputationSwitchValueChanged(app, event)
            % Changing all parallel computations switches when changed by
            % the user.
            value = app.ParallelcomputationSwitch.Value;
            app.ParallelcomputationSwitch_2.Value=value;
            app.ParallelcomputationSwitch_3.Value=value;
        end

        % Value changed function: ParallelcomputationSwitch_2
        function ParallelcomputationSwitch_2ValueChanged(app, event)
            % Changing all parallel computations switches when changed by
            % the user.
            value = app.ParallelcomputationSwitch_2.Value;
            app.ParallelcomputationSwitch.Value=value;
            app.ParallelcomputationSwitch_3.Value=value;
        end

        % Value changed function: ParallelcomputationSwitch_3
        function ParallelcomputationSwitch_3ValueChanged(app, event)
            % Changing all parallel computations switches when changed by
            % the user.
            value = app.ParallelcomputationSwitch_3.Value;
            app.ParallelcomputationSwitch_2.Value=value;
            app.ParallelcomputationSwitch.Value=value;
        end

        % Value changed function: MindistancemeanradiusEditField
        function MindistancemeanradiusEditFieldValueChanged(app, event)
            % Changing the minimal distance between particles 
            % (multiplying the mean radius) when changed by the user.
            value = app.MindistancemeanradiusEditField.Value;
            app.minRadOver=value;
        end

        % Callback function
        function OrdermasksfortessellationButtonPushed(app, event)
            % Associating the best fitting particles with each hexagonal hull's center
            % by finding the closest particle to each hull vertex.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            [app.eOfMasksHexa,I]=sort(app.eOfMasksHexa);
            app.coorOfMasksHexa=app.coorOfMasksHexa(I,:);
            a=app.hullHexa(1);
            b=app.hullHexa(2);
            c=app.hullHexa(3);
            parpool('local', maxNumCompThreads);
            cent=parallel.pool.Constant(app.centers);
            coor=parallel.pool.Constant(app.coorOfMasksHexa);
            indPerCentTemp=NaN(size(coor.Value,1),6);
            parfor i=1:size(coor.Value,1)
                minList=NaN(1,6);
                centHu=coor.Value(i,1:2);
                ang=coor.Value(i,3);
                p1=centHu+(a/2+c)*[cos(ang),sin(ang)];
                dist=sqrt((cent.Value(:,1)-p1(1)).^2+(cent.Value(:,2)-p1(2)).^2);
                [~,minInd]=min(dist);
                minList(1)=minInd;
                p2=centHu+(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                dist=sqrt((cent.Value(:,1)-p2(1)).^2+(cent.Value(:,2)-p2(2)).^2);
                [~,minInd]=min(dist);
                minList(2)=minInd;
                p3=centHu-(a/2)*[cos(ang),sin(ang)]+(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                dist=sqrt((cent.Value(:,1)-p3(1)).^2+(cent.Value(:,2)-p3(2)).^2);
                [~,minInd]=min(dist);
                minList(3)=minInd;
                p4=centHu-(a/2+c)*[cos(ang),sin(ang)];
                dist=sqrt((cent.Value(:,1)-p4(1)).^2+(cent.Value(:,2)-p4(2)).^2);
                [~,minInd]=min(dist);
                minList(4)=minInd;
                p5=centHu-(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                dist=sqrt((cent.Value(:,1)-p5(1)).^2+(cent.Value(:,2)-p5(2)).^2);
                [~,minInd]=min(dist);
                minList(5)=minInd;
                p6=centHu+(a/2)*[cos(ang),sin(ang)]-(b/2)*[cos(ang+pi/2),sin(ang+pi/2)];
                dist=sqrt((cent.Value(:,1)-p6(1)).^2+(cent.Value(:,2)-p6(2)).^2);
                [~,minInd]=min(dist);
                minList(6)=minInd;
                if length(unique(minList))==6
                    indPerCentTemp(i,:)=minList;
                end
            end
            delete(gcp('nocreate'));
            indPerCentTemp=indPerCentTemp(~isnan(indPerCentTemp(:,1)),:);
            app.indPerCentHexa=indPerCentTemp;
            cla(app.UIAxes2_4)
            imshow(app.imageP,'Parent',app.UIAxes2_4)
            axis(app.UIAxes2_4,"image")
            hold(app.UIAxes2_4,'on')
            for i=1:size(app.coorOfMasksHexa)
                if isnan(app.indPerCentHexa(i,1))==false
                for j=1:6
                    plot(app.UIAxes2_4,[app.coorOfMasksHexa(i,1),app.centers(app.indPerCentHexa(i,j),1)],[app.coorOfMasksHexa(i,2),app.centers(app.indPerCentHexa(i,j),2)],'green')
                end
                scatter(app.UIAxes2_4,app.coorOfMasksHexa(i,1),app.coorOfMasksHexa(i,2),'.red')
                end
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Value changed function: ManualvaluefordeviationslongEditField
        function ManualvaluefordeviationslongEditFieldValueChanged(app, event)
            % Changing the value of the short edge for deviations plotting
            % in case that there is 4-fold symmetry expected for the
            % rectangular unit-cell (used only for deviations from manual
            % picked value according to the switch).
            value = app.ManualvaluefordeviationslongEditField.Value;
            v2=app.SymmetryrectangleSwitch.Value;
            v2=convertCharsToStrings(v2);
            if v2==['4']
                app.ManualvaluefordeviationsshortEditField.Value=value;
            end
        end

        % Value changed function: ManualvaluefordeviationsshortEditField
        function ManualvaluefordeviationsshortEditFieldValueChanged(app, event)
            % Changing the value of the long edge for deviations plotting
            % in case that there is 4-fold symmetry expected for the
            % rectangular unit-cell (used only for deviations from manual
            % picked value according to the switch).
            value = app.ManualvaluefordeviationsshortEditField.Value;
            v2=app.SymmetryrectangleSwitch.Value;
            v2=convertCharsToStrings(v2);
            if v2==['4']
                app.ManualvaluefordeviationslongEditField.Value=value;
            end
        end

        % Value changed function: ChangeButton
        function ChangeButtonValueChanged(app, event)
            % Changing the color of the background for the segmented crystal
            % according to the users' choice (black or white).
            if isempty(app.segmentationMask)==false
                vIm=app.BackgroundcolorDropDown.Value;
                vIm=convertCharsToStrings(vIm);
                if vIm==['White']
                    app.imageP(app.segmentationMask)=255;
                else
                    app.imageP(app.segmentationMask)=0;
                end
            end
        end

        % Button pushed function: ExportButton
        function ExportButtonPushed(app, event)
            % Saving the variables chosen by the user (in the checkboxes)
            % to a mat file.
            filter = {'*.mat'};
            [file, path] = uiputfile(filter);
            if isempty(file)==true
                return;
            else
                if app.UnprocessedcroppedimageCheckBox.Value && isempty(app.imageOri)==false
                    vars.imageOri=app.imageOri;
                end
                if app.ProcessedimageCheckBox.Value && isempty(app.imageP)==false
                    vars.imageP=app.imageP;
                end
                if app.DetectedparticlescentersradiiandmetricCheckBox.Value && isempty(app.centers)==false 
                    vars.centers=app.centers;
                    vars.radii=app.radii;
                    vars.particlesMetric=app.particlesMetric;
                end
                if app.DetectedmaskscoordinatesandmetricsortedtriangularCheckBox.Value && isempty(app.coorOfMasksTri)==false
                    vars.coorOfHullsTri=app.coorOfMasksTri;
                    vars.eOfHullsTri=app.eOfMasksTri;
                end
                if app.MaskparametestriangularCheckBox.Value && isempty(app.hullTri)==false
                    vars.hullTri=app.hullTri;
                end
                if app.ParticlesindicesassociatedwithmaskstriangularCheckBox.Value && isempty(app.indPerCentTri)==false
                    vars.indPerCentTri=app.indPerCentTri;
                end
                if app.DetectedmaskscoordinatesandmetricsortedrectangularCheckBox.Value && isempty(app.coorOfMasksRect)==false
                    vars.coorOfHullsRect=app.coorOfMasksRect;
                    vars.eOfHullsRect=app.eOfMasksRect;
                end
                if app.MaskparametesrectangularCheckBox.Value && isempty(app.hullRect)==false
                    vars.hullRect=app.hullRect;
                end
                if app.ParticlesindicesassociatedwithmasksrectangularCheckBox.Value && isempty(app.indPerCentRect)==false
                    vars.indPerCentRect=app.indPerCentRect;
                end
                if app.DetectedmaskscoordinatesandmetricsortedhexagonalCheckBox.Value && isempty(app.coorOfMasksHexa)==false
                    vars.coorOfHullsHexa=app.coorOfMasksHexa;
                    vars.eOfHullsHexa=app.eOfMasksHexa;
                end
                if app.MaskparameteshexagonalCheckBox.Value && isempty(app.hullHexa)==false
                    vars.hullHexa=app.hullHexa;
                end
                if app.ParticlesindicesassociatedwithmaskshexagonalCheckBox.Value && isempty(app.indPerCentHexa)==false
                    vars.indPerCent=app.indPerCentHexa;
                end
                if app.CrystalsegmentationmaskCheckBox.Value && isempty(app.segmentationMask)==false
                    vars.segmentationMask=app.segmentationMask;
                end
                if isempty(vars)==false
                    try
                        save(fullfile(path,file),'-struct','vars','-mat');
                    catch
                        errordlg('There was a problem saving the file','Saving Error!');
                        return;
                    end
                else
                    errordlg('No variables were chosen','Saving Error!');
                    return;
                end
            end
        end

        % Value changed function: Switch_7
        function Switch_7ValueChanged(app, event)
            % Changing between '2 stage' and 'phase coding' for the Hough
            % transform in locating the particles. 
            v = app.Switch_7.Value;
            v=convertCharsToStrings(v);
            if v==['2 stage']
                app.particlesFindingMethod='TwoStage';
            elseif v==['Phase coding']
                app.particlesFindingMethod='PhaseCode';
            end
        end

        % Value changed function: ThresholdDropDown
        function ThresholdDropDownValueChanged(app, event)
            % Changing the thresholding methode for Hough transform between
            % auto, manual and scan. 
            v = app.ThresholdDropDown.Value;
            v=convertCharsToStrings(v);
            if v==['Manual']
                app.ManualmaxEditField.Value=app.ManualinitialEditField.Value;
            end
        end

        % Button pushed function: PlotButton_4
        function PlotButton_4Pushed(app, event)
            % Plotting the angles with adjusted colormaps.
            app.ReadyLamp.Color='red';
            app.ReadyLabel.Text='Busy';
            drawnow()
            if isempty(app.coorOfMasksHexa)==false && app.HexagonalButton.Value
                coor=app.coorOfMasksHexa;
                a=app.hullHexa(1)/2;
            elseif isempty(app.coorOfMasksRect)==false && app.RectangularButton.Value
                coor=app.coorOfMasksRect;
                a=app.hullRect(1)/4;
            elseif isempty(app.coorOfMasksTri)==false && app.TriangularButton.Value
                coor=app.coorOfMasksTri;
                coor(:,3)=mod(coor(:,3),pi/3);
                a=app.hullTri(1);
                a=sqrt(0.75).*a/3;
            end
            if isempty(coor)==false
                Cmap=zeros(256,4);
                maxAnglesPerDomain=app.Angle2toEditField.Value*pi/180;
                minAnglesPerDomain=app.Angle1fromEditField.Value*pi/180;
                jump=(maxAnglesPerDomain-minAnglesPerDomain)/255;
                col2=minAnglesPerDomain:jump:maxAnglesPerDomain;
                Cmap(:,1)=col2';
                Cmap(:,2:4)=hsv;
                col = interp1(Cmap(:,1),Cmap(:,2:4),coor(:,3));
                col(coor(:,3)>maxAnglesPerDomain,:)=repmat(Cmap(end,2:4),sum(coor(:,3)>maxAnglesPerDomain),1);
                col(coor(:,3)<minAnglesPerDomain,:)=repmat(Cmap(1,2:4),sum(coor(:,3)<minAnglesPerDomain),1);
                cla(app.UIAxes2_3)
                imshow(app.imageP,'Parent',app.UIAxes2_3)
                axis(app.UIAxes2_3,"image")
                hold(app.UIAxes2_3,'on')
                if app.HexagonalButton.Value || app.RectangularButton.Value
                    for j=1:length(coor)
                        plot(app.UIAxes2_3,[coor(j,1)-cos(coor(j,3)).*a,coor(j,1)+cos(coor(j,3)).*a],[coor(j,2)-sin(coor(j,3)).*a,coor(j,2)+sin(coor(j,3)).*a],'Color',col(j,:),'LineWidth',1.5)
                    end
                elseif app.TriangularButton.Value
                    for j=1:length(coor)
                        if isnan(col(j,:))==false
                            plot(app.UIAxes2_3,[coor(j,1)-cos(coor(j,3)+pi/2).*a,coor(j,1)+cos(coor(j,3)+pi/2).*a],[coor(j,2)-sin(coor(j,3)+pi/2).*a,coor(j,2)+sin(coor(j,3)+pi/2).*a],'Color',col(j,:),'LineWidth',1.5)
                            plot(app.UIAxes2_3,[coor(j,1)-cos(coor(j,3)+2*pi/3+pi/2).*a,coor(j,1)+cos(coor(j,3)+pi/2+2*pi/3).*a],[coor(j,2)-sin(coor(j,3)+pi/2+2*pi/3).*a,coor(j,2)+sin(coor(j,3)+pi/2+2*pi/3).*a],'Color',col(j,:),'LineWidth',1.5)
                            plot(app.UIAxes2_3,[coor(j,1)-cos(coor(j,3)+4*pi/3+pi/2).*a,coor(j,1)+cos(coor(j,3)+pi/2+4*pi/3).*a],[coor(j,2)-sin(coor(j,3)+pi/2+4*pi/3).*a,coor(j,2)+sin(coor(j,3)+pi/2+4*pi/3).*a],'Color',col(j,:),'LineWidth',1.5)
                        end
                    end
                end
                if app.HexagonalButton.Value || app.RectangularButton.Value
                    n2=floor(20*pi/(maxAnglesPerDomain-minAnglesPerDomain));
                    r=22*(n2)/(maxAnglesPerDomain-minAnglesPerDomain);
                    t=(0:n2-1)/(n2)*pi;
                    x=r*cos(t);
                    y=r*sin(t);
                    orient=atan2(y,x);
                    centersLeg=[x' -y'];
                    centersLeg2=[x' -y'];
                    M = [cos(pi) -sin(pi); sin(pi) cos(pi)];
                    centersLeg2=(M*centersLeg2')';
                    col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                    col(orient>maxAnglesPerDomain,:)=repmat(Cmap(end,2:4),sum(orient>maxAnglesPerDomain),1);
                    col(orient<minAnglesPerDomain,:)=repmat(Cmap(end,2:4),sum(orient<minAnglesPerDomain),1);
                    figure(50)
                    hold on
                    for ii=1:n2
                        points=centersLeg(ii,:);
                        points2=centersLeg2(ii,:);
                        rectangle('Position',[points,n2,n2],'Curvature',[1 1],'FaceColor',col(ii,:),'EdgeColor','None');
                        rectangle('Position',[points2,n2,n2],'Curvature',[1 1],'FaceColor',col(ii,:),'EdgeColor','None');
                    end
                    box off
                    xlim([-r*1.1,r*1.1])
                    ylim([-r*1.1,r*1.1])
                else
                    n2=50;
                    r=22*(n2)/(pi/3);
                    t=(0:n2-1)/(n2)*pi/3;
                    x=r*cos(t);
                    y=r*sin(t);
                    orient=atan2(y,x);
                    centersLeg=[x' -y'];
                    M = [cos(pi/2) -sin(pi/2); sin(pi/2) cos(pi/2)];
                    centersLeg=(M*centersLeg')';
                    centersLeg2=[x' -y'];
                    M = [cos(pi/3+pi/2) -sin(pi/3+pi/2); sin(pi/3+pi/2) cos(pi/3+pi/2)];
                    centersLeg2=(M*centersLeg2')';
                    centersLeg3=[x' -y'];
                    M = [cos(2*pi/3+pi/2) -sin(2*pi/3+pi/2); sin(2*pi/3+pi/2) cos(2*pi/3+pi/2)];
                    centersLeg3=(M*centersLeg3')';
                    centersLeg4=[x' -y'];
                    M = [cos(pi+pi/2) -sin(pi+pi/2); sin(pi+pi/2) cos(pi+pi/2)];
                    centersLeg4=(M*centersLeg4')';
                    centersLeg5=[x' -y'];
                    M = [cos(4*pi/3+pi/2) -sin(4*pi/3+pi/2); sin(4*pi/3+pi/2) cos(4*pi/3+pi/2)];
                    centersLeg5=(M*centersLeg5')';
                    centersLeg6=[x' -y'];
                    M = [cos(5*pi/3+pi/2) -sin(5*pi/3+pi/2); sin(5*pi/3+pi/2) cos(5*pi/3+pi/2)];
                    centersLeg6=(M*centersLeg6')';
                    col = interp1(Cmap(:,1),Cmap(:,2:4),orient);
                    col(orient>maxAnglesPerDomain,:)=repmat(Cmap(end,2:4),sum(orient>maxAnglesPerDomain),1);
                    col(orient<minAnglesPerDomain,:)=repmat(Cmap(end,2:4),sum(orient<minAnglesPerDomain),1);
                    figure(50)
                    hold on
                    for ii=1:n2
                        points=centersLeg(ii,:);
                        points2=centersLeg2(ii,:);
                        points3=centersLeg3(ii,:);
                        points4=centersLeg4(ii,:);
                        points5=centersLeg5(ii,:);
                        points6=centersLeg6(ii,:);
                        rectangle('Position',[points,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                        rectangle('Position',[points2,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                        rectangle('Position',[points3,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                        rectangle('Position',[points4,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                        rectangle('Position',[points5,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                        rectangle('Position',[points6,20,20],'Curvature',[1 1],'FaceColor',col(ii,:));
                    end
                end
                axis equal
            end
            app.ReadyLamp.Color='green';
            app.ReadyLabel.Text='Ready';
        end

        % Button pushed function: LoadcentersfromfileButton
        function LoadcentersfromfileButtonPushed(app, event)
            % Loading particles' centers from mat file.  
            try
                filter = {'*.mat','Centers, radii and metric of particles from file'};
                [file, path] = uigetfile(filter);
                msgbox(["Make sure to have particles identified for the same image";"and to have the centers locations (x,y) saved in a variable named: centers,";'radii in a variable named: radii.';'and metric of the indentified particles in a variable named: particlesMetric.']);
                myVars = {'centers','radii','particlesMetric'};
                d=load(fullfile(path,file),myVars{:});
                app.centers=[];
                app.centers=d.centers;
                app.radii=[];
                app.radii=d.radii;
                app.particlesMetric=[];
                app.particlesMetric=d.particlesMetric;
                if isempty(d.centers) || isempty(d.radii)
                    errordlg('No centers and/or radii were loaded. Verify correct format','Load Error!');
                end
            catch
                errordlg('No centers and/or radii were loaded. Verify correct format','Load Error!');
                return;
            end
        end

        % Button pushed function: PlotoverlayhexagonalButton
        function PlotoverlayhexagonalButtonPushed(app, event)
            % Plotting the centers of the detected hexagonal hulls and/or particles' centers per user request. 
            cla(app.UIAxes2)
            imshow(app.imageP,'Parent',app.UIAxes2)
            axis(app.UIAxes2,"image") 
            hold(app.UIAxes2,'on')
            if isempty(app.coorOfMasksHexa)==false && app.HexagonalmaskscentersCheckBox.Value
               scatter(app.UIAxes2,app.coorOfMasksHexa(:,1),app.coorOfMasksHexa(:,2),int32(round(mean(app.radii)/2)),"cyan",'o','filled');
            end
            if isempty(app.centers)==false && app.ParticlescentersCheckBox_4.Value
                scatter(app.UIAxes2,app.centers(:,1),app.centers(:,2),int32(round(mean(app.radii)/2)),"red",'o','filled')
            end
        end

        % Button pushed function: PlotoverlayrectangularButton
        function PlotoverlayrectangularButtonPushed(app, event)
            % Plotting the centers of the detected rectangular hulls and/or particles' centers per user request. 
            cla(app.UIAxes2)
            imshow(app.imageP,'Parent',app.UIAxes2)
            axis(app.UIAxes2,"image") 
            hold(app.UIAxes2,'on')
            if isempty(app.coorOfMasksRect)==false && app.RectangularmaskscentersCheckBox.Value
               scatter(app.UIAxes2,app.coorOfMasksRect(:,1),app.coorOfMasksRect(:,2),int32(round(mean(app.radii)/2)),"cyan",'o','filled');
            end
            if isempty(app.centers)==false && app.ParticlescentersCheckBox_5.Value
                scatter(app.UIAxes2,app.centers(:,1),app.centers(:,2),int32(round(mean(app.radii)/2)),"red",'o','filled')
            end
        end

        % Button pushed function: PlotoverlaytriangularButton
        function PlotoverlaytriangularButtonPushed(app, event)
          % Plotting the centers of the detected triangular hulls and/or particles' centers per user request. 
            cla(app.UIAxes2)
            imshow(app.imageP,'Parent',app.UIAxes2)
            axis(app.UIAxes2,"image") 
            hold(app.UIAxes2,'on')
            if isempty(app.coorOfMasksTri)==false && app.TriangularmaskscentersCheckBox.Value
               scatter(app.UIAxes2,app.coorOfMasksTri(:,1),app.coorOfMasksTri(:,2),int32(round(mean(app.radii)/2)),"cyan",'o','filled');
            end
            if isempty(app.centers)==false && app.ParticlescentersCheckBox_6.Value
                scatter(app.UIAxes2,app.centers(:,1),app.centers(:,2),int32(round(mean(app.radii)/2)),"red",'o','filled')
            end  
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 877 613];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [6 13 869 564];

            % Create MainTab
            app.MainTab = uitab(app.TabGroup);
            app.MainTab.Title = 'Main';

            % Create UIAxes
            app.UIAxes = uiaxes(app.MainTab);
            title(app.UIAxes, 'Image')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Box = 'on';
            app.UIAxes.Position = [12 12 272 258];

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.MainTab);
            title(app.UIAxes_2, 'Proccessed Image')
            zlabel(app.UIAxes_2, 'Z')
            app.UIAxes_2.Box = 'on';
            app.UIAxes_2.Position = [299 12 276 258];

            % Create UIAxes_3
            app.UIAxes_3 = uiaxes(app.MainTab);
            title(app.UIAxes_3, 'Layered Image')
            zlabel(app.UIAxes_3, 'Z')
            app.UIAxes_3.Box = 'on';
            app.UIAxes_3.Position = [584 12 276 259];

            % Create EnhancecontrastPanel
            app.EnhancecontrastPanel = uipanel(app.MainTab);
            app.EnhancecontrastPanel.Title = 'Enhance contrast';
            app.EnhancecontrastPanel.Position = [230 364 116 171];

            % Create ImAdjustButton
            app.ImAdjustButton = uibutton(app.EnhancecontrastPanel, 'push');
            app.ImAdjustButton.ButtonPushedFcn = createCallbackFcn(app, @ImAdjustButtonPushed, true);
            app.ImAdjustButton.Position = [9 123 100 22];
            app.ImAdjustButton.Text = 'ImAdjust';

            % Create HistEqButton
            app.HistEqButton = uibutton(app.EnhancecontrastPanel, 'push');
            app.HistEqButton.ButtonPushedFcn = createCallbackFcn(app, @HistEqButtonPushed, true);
            app.HistEqButton.Position = [9 93 100 22];
            app.HistEqButton.Text = 'HistEq';

            % Create AdaptHistEqButton
            app.AdaptHistEqButton = uibutton(app.EnhancecontrastPanel, 'push');
            app.AdaptHistEqButton.ButtonPushedFcn = createCallbackFcn(app, @AdaptHistEqButtonPushed, true);
            app.AdaptHistEqButton.Position = [8 64 100 22];
            app.AdaptHistEqButton.Text = 'AdaptHistEq';

            % Create ResetButton
            app.ResetButton = uibutton(app.EnhancecontrastPanel, 'push');
            app.ResetButton.ButtonPushedFcn = createCallbackFcn(app, @ResetButtonPushed, true);
            app.ResetButton.Position = [8 5 100 22];
            app.ResetButton.Text = 'Reset';

            % Create DeblurringButton
            app.DeblurringButton = uibutton(app.EnhancecontrastPanel, 'push');
            app.DeblurringButton.ButtonPushedFcn = createCallbackFcn(app, @DeblurringButtonPushed, true);
            app.DeblurringButton.Position = [9 34 100 22];
            app.DeblurringButton.Text = 'Deblurring';

            % Create CropimagePanel
            app.CropimagePanel = uipanel(app.MainTab);
            app.CropimagePanel.Title = 'Crop image';
            app.CropimagePanel.Position = [7 364 216 126];

            % Create XLowEditFieldLabel
            app.XLowEditFieldLabel = uilabel(app.CropimagePanel);
            app.XLowEditFieldLabel.HorizontalAlignment = 'right';
            app.XLowEditFieldLabel.Position = [6 75 39 22];
            app.XLowEditFieldLabel.Text = 'X Low';

            % Create XLowEditField
            app.XLowEditField = uieditfield(app.CropimagePanel, 'numeric');
            app.XLowEditField.Limits = [1 Inf];
            app.XLowEditField.Position = [60 70 39 31];
            app.XLowEditField.Value = 1;

            % Create YLowEditFieldLabel
            app.YLowEditFieldLabel = uilabel(app.CropimagePanel);
            app.YLowEditFieldLabel.HorizontalAlignment = 'right';
            app.YLowEditFieldLabel.Position = [7 37 38 22];
            app.YLowEditFieldLabel.Text = 'Y Low';

            % Create YLowEditField
            app.YLowEditField = uieditfield(app.CropimagePanel, 'numeric');
            app.YLowEditField.Limits = [1 Inf];
            app.YLowEditField.Position = [60 32 39 31];
            app.YLowEditField.Value = 1;

            % Create YHighEditFieldLabel
            app.YHighEditFieldLabel = uilabel(app.CropimagePanel);
            app.YHighEditFieldLabel.HorizontalAlignment = 'right';
            app.YHighEditFieldLabel.Position = [113 37 41 22];
            app.YHighEditFieldLabel.Text = 'Y High';

            % Create YHighEditField
            app.YHighEditField = uieditfield(app.CropimagePanel, 'numeric');
            app.YHighEditField.Limits = [1 Inf];
            app.YHighEditField.Position = [169 32 39 31];
            app.YHighEditField.Value = 1;

            % Create XHighEditFieldLabel
            app.XHighEditFieldLabel = uilabel(app.CropimagePanel);
            app.XHighEditFieldLabel.HorizontalAlignment = 'right';
            app.XHighEditFieldLabel.Position = [113 75 41 22];
            app.XHighEditFieldLabel.Text = 'X High';

            % Create XHighEditField
            app.XHighEditField = uieditfield(app.CropimagePanel, 'numeric');
            app.XHighEditField.Limits = [1 Inf];
            app.XHighEditField.Position = [169 70 39 31];
            app.XHighEditField.Value = 1;

            % Create CropButton
            app.CropButton = uibutton(app.CropimagePanel, 'push');
            app.CropButton.ButtonPushedFcn = createCallbackFcn(app, @CropButtonPushed, true);
            app.CropButton.Position = [62 5 100 22];
            app.CropButton.Text = 'Crop';

            % Create ParticleidentificationPanel
            app.ParticleidentificationPanel = uipanel(app.MainTab);
            app.ParticleidentificationPanel.Title = 'Particle identification';
            app.ParticleidentificationPanel.Position = [353 328 360 207];

            % Create MinradiusEditFieldLabel
            app.MinradiusEditFieldLabel = uilabel(app.ParticleidentificationPanel);
            app.MinradiusEditFieldLabel.HorizontalAlignment = 'right';
            app.MinradiusEditFieldLabel.Position = [6 159 61 22];
            app.MinradiusEditFieldLabel.Text = 'Min radius';

            % Create MinradiusEditField
            app.MinradiusEditField = uieditfield(app.ParticleidentificationPanel, 'numeric');
            app.MinradiusEditField.Limits = [1 Inf];
            app.MinradiusEditField.Position = [81 159 30 22];
            app.MinradiusEditField.Value = 7;

            % Create MaxradiusEditFieldLabel
            app.MaxradiusEditFieldLabel = uilabel(app.ParticleidentificationPanel);
            app.MaxradiusEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxradiusEditFieldLabel.Position = [3 128 64 22];
            app.MaxradiusEditFieldLabel.Text = 'Max radius';

            % Create MaxradiusEditField
            app.MaxradiusEditField = uieditfield(app.ParticleidentificationPanel, 'numeric');
            app.MaxradiusEditField.Limits = [1 Inf];
            app.MaxradiusEditField.Position = [81 128 30 22];
            app.MaxradiusEditField.Value = 12;

            % Create SensitivityEditFieldLabel
            app.SensitivityEditFieldLabel = uilabel(app.ParticleidentificationPanel);
            app.SensitivityEditFieldLabel.HorizontalAlignment = 'right';
            app.SensitivityEditFieldLabel.Position = [6 96 59 22];
            app.SensitivityEditFieldLabel.Text = 'Sensitivity';

            % Create SensitivityEditField
            app.SensitivityEditField = uieditfield(app.ParticleidentificationPanel, 'numeric');
            app.SensitivityEditField.Limits = [0 1];
            app.SensitivityEditField.Position = [79 96 32 22];
            app.SensitivityEditField.Value = 0.9;

            % Create FindCentersButton
            app.FindCentersButton = uibutton(app.ParticleidentificationPanel, 'push');
            app.FindCentersButton.ButtonPushedFcn = createCallbackFcn(app, @FindCentersButtonPushed, true);
            app.FindCentersButton.Position = [3 33 100 22];
            app.FindCentersButton.Text = 'Find Centers';

            % Create Switch_4
            app.Switch_4 = uiswitch(app.ParticleidentificationPanel, 'rocker');
            app.Switch_4.Items = {'Dark', 'Bright'};
            app.Switch_4.Position = [123 115 20 45];
            app.Switch_4.Value = 'Bright';

            % Create ManualinitialEditFieldLabel
            app.ManualinitialEditFieldLabel = uilabel(app.ParticleidentificationPanel);
            app.ManualinitialEditFieldLabel.HorizontalAlignment = 'right';
            app.ManualinitialEditFieldLabel.Position = [5 63 75 22];
            app.ManualinitialEditFieldLabel.Text = 'Manual initial';

            % Create ManualinitialEditField
            app.ManualinitialEditField = uieditfield(app.ParticleidentificationPanel, 'numeric');
            app.ManualinitialEditField.Limits = [0 1];
            app.ManualinitialEditField.Position = [84 63 34 22];
            app.ManualinitialEditField.Value = 0.2;

            % Create AutoparametersButton
            app.AutoparametersButton = uibutton(app.ParticleidentificationPanel, 'push');
            app.AutoparametersButton.ButtonPushedFcn = createCallbackFcn(app, @AutoparametersButtonPushed, true);
            app.AutoparametersButton.Position = [109 33 104 22];
            app.AutoparametersButton.Text = 'Auto parameters';

            % Create CentersoptimizationButton
            app.CentersoptimizationButton = uibutton(app.ParticleidentificationPanel, 'push');
            app.CentersoptimizationButton.ButtonPushedFcn = createCallbackFcn(app, @CentersoptimizationButtonPushed, true);
            app.CentersoptimizationButton.Position = [220 33 125 22];
            app.CentersoptimizationButton.Text = 'Centers optimization';

            % Create MindistancemeanradiusEditFieldLabel
            app.MindistancemeanradiusEditFieldLabel = uilabel(app.ParticleidentificationPanel);
            app.MindistancemeanradiusEditFieldLabel.HorizontalAlignment = 'right';
            app.MindistancemeanradiusEditFieldLabel.Position = [154 160 149 22];
            app.MindistancemeanradiusEditFieldLabel.Text = 'Min distance - mean radius';

            % Create MindistancemeanradiusEditField
            app.MindistancemeanradiusEditField = uieditfield(app.ParticleidentificationPanel, 'numeric');
            app.MindistancemeanradiusEditField.Limits = [0.1 Inf];
            app.MindistancemeanradiusEditField.ValueChangedFcn = createCallbackFcn(app, @MindistancemeanradiusEditFieldValueChanged, true);
            app.MindistancemeanradiusEditField.Position = [312 160 34 22];
            app.MindistancemeanradiusEditField.Value = 1.4;

            % Create Switch_7
            app.Switch_7 = uiswitch(app.ParticleidentificationPanel, 'slider');
            app.Switch_7.Items = {'Phase coding', '2 stage'};
            app.Switch_7.ValueChangedFcn = createCallbackFcn(app, @Switch_7ValueChanged, true);
            app.Switch_7.Position = [250 130 45 20];
            app.Switch_7.Value = '2 stage';

            % Create ThresholdDropDownLabel
            app.ThresholdDropDownLabel = uilabel(app.ParticleidentificationPanel);
            app.ThresholdDropDownLabel.HorizontalAlignment = 'right';
            app.ThresholdDropDownLabel.Position = [167 98 59 22];
            app.ThresholdDropDownLabel.Text = 'Threshold';

            % Create ThresholdDropDown
            app.ThresholdDropDown = uidropdown(app.ParticleidentificationPanel);
            app.ThresholdDropDown.Items = {'Auto threshold', 'Manual', 'Scan'};
            app.ThresholdDropDown.ValueChangedFcn = createCallbackFcn(app, @ThresholdDropDownValueChanged, true);
            app.ThresholdDropDown.Position = [241 98 100 22];
            app.ThresholdDropDown.Value = 'Auto threshold';

            % Create ManualmaxEditFieldLabel
            app.ManualmaxEditFieldLabel = uilabel(app.ParticleidentificationPanel);
            app.ManualmaxEditFieldLabel.HorizontalAlignment = 'right';
            app.ManualmaxEditFieldLabel.Position = [124 63 71 22];
            app.ManualmaxEditFieldLabel.Text = 'Manual max';

            % Create ManualmaxEditField
            app.ManualmaxEditField = uieditfield(app.ParticleidentificationPanel, 'numeric');
            app.ManualmaxEditField.Limits = [0 1];
            app.ManualmaxEditField.Position = [199 63 34 22];
            app.ManualmaxEditField.Value = 0.2;

            % Create GranularityEditFieldLabel
            app.GranularityEditFieldLabel = uilabel(app.ParticleidentificationPanel);
            app.GranularityEditFieldLabel.HorizontalAlignment = 'right';
            app.GranularityEditFieldLabel.Position = [244 63 64 22];
            app.GranularityEditFieldLabel.Text = 'Granularity';

            % Create GranularityEditField
            app.GranularityEditField = uieditfield(app.ParticleidentificationPanel, 'numeric');
            app.GranularityEditField.Limits = [0 1];
            app.GranularityEditField.Position = [312 63 34 22];
            app.GranularityEditField.Value = 0.2;

            % Create LoadcentersfromfileButton
            app.LoadcentersfromfileButton = uibutton(app.ParticleidentificationPanel, 'push');
            app.LoadcentersfromfileButton.ButtonPushedFcn = createCallbackFcn(app, @LoadcentersfromfileButtonPushed, true);
            app.LoadcentersfromfileButton.Position = [117 3 130 23];
            app.LoadcentersfromfileButton.Text = 'Load centers from file';

            % Create LayersPanel
            app.LayersPanel = uipanel(app.MainTab);
            app.LayersPanel.Title = 'Layers';
            app.LayersPanel.Position = [719 328 148 207];

            % Create UpdatelayerssButton
            app.UpdatelayerssButton = uibutton(app.LayersPanel, 'push');
            app.UpdatelayerssButton.ButtonPushedFcn = createCallbackFcn(app, @UpdatelayerssButtonPushed, true);
            app.UpdatelayerssButton.Position = [21 3 100 22];
            app.UpdatelayerssButton.Text = 'Update layerss';

            % Create ParticlesedgesCheckBox
            app.ParticlesedgesCheckBox = uicheckbox(app.LayersPanel);
            app.ParticlesedgesCheckBox.Text = 'Particles - edges';
            app.ParticlesedgesCheckBox.FontSize = 11;
            app.ParticlesedgesCheckBox.Position = [3 165 104 22];

            % Create ParticlescentersCheckBox_2
            app.ParticlescentersCheckBox_2 = uicheckbox(app.LayersPanel);
            app.ParticlescentersCheckBox_2.Text = 'Particles - centers';
            app.ParticlescentersCheckBox_2.FontSize = 11;
            app.ParticlescentersCheckBox_2.Position = [3 146 110 22];

            % Create HexagonalboundaryCheckBox
            app.HexagonalboundaryCheckBox = uicheckbox(app.LayersPanel);
            app.HexagonalboundaryCheckBox.Text = 'Hexagonal-boundary';
            app.HexagonalboundaryCheckBox.FontSize = 11;
            app.HexagonalboundaryCheckBox.Position = [3 106 124 22];

            % Create HexagonalorientationsCheckBox
            app.HexagonalorientationsCheckBox = uicheckbox(app.LayersPanel);
            app.HexagonalorientationsCheckBox.Text = 'Hexagonal-orientations';
            app.HexagonalorientationsCheckBox.FontSize = 11;
            app.HexagonalorientationsCheckBox.Position = [3 126 135 22];

            % Create RectangularboundaryCheckBox
            app.RectangularboundaryCheckBox = uicheckbox(app.LayersPanel);
            app.RectangularboundaryCheckBox.Text = 'Rectangular-boundary';
            app.RectangularboundaryCheckBox.FontSize = 11;
            app.RectangularboundaryCheckBox.Position = [3 66 131 22];

            % Create RectangularorientationsCheckBox
            app.RectangularorientationsCheckBox = uicheckbox(app.LayersPanel);
            app.RectangularorientationsCheckBox.Text = 'Rectangular-orientations';
            app.RectangularorientationsCheckBox.FontSize = 11;
            app.RectangularorientationsCheckBox.Position = [3 86 142 22];

            % Create TriangularboundaryCheckBox
            app.TriangularboundaryCheckBox = uicheckbox(app.LayersPanel);
            app.TriangularboundaryCheckBox.Text = 'Triangular-boundary';
            app.TriangularboundaryCheckBox.FontSize = 11;
            app.TriangularboundaryCheckBox.Position = [3 26 121 22];

            % Create TriangularorientationsCheckBox
            app.TriangularorientationsCheckBox = uicheckbox(app.LayersPanel);
            app.TriangularorientationsCheckBox.Text = 'Triangular-orientations';
            app.TriangularorientationsCheckBox.FontSize = 11;
            app.TriangularorientationsCheckBox.Position = [3 46 132 22];

            % Create LoadNewImageButton
            app.LoadNewImageButton = uibutton(app.MainTab, 'push');
            app.LoadNewImageButton.ButtonPushedFcn = createCallbackFcn(app, @LoadNewImageButtonPushed, true);
            app.LoadNewImageButton.Position = [53 499 115 29];
            app.LoadNewImageButton.Text = 'Load New Image';

            % Create SegmentcrystalPanel
            app.SegmentcrystalPanel = uipanel(app.MainTab);
            app.SegmentcrystalPanel.Title = 'Segment crystal';
            app.SegmentcrystalPanel.Position = [8 272 294 85];

            % Create SegmentButton
            app.SegmentButton = uibutton(app.SegmentcrystalPanel, 'push');
            app.SegmentButton.ButtonPushedFcn = createCallbackFcn(app, @SegmentButtonPushed, true);
            app.SegmentButton.Position = [60 35 65 22];
            app.SegmentButton.Text = 'Segment';

            % Create RemovesegmentedButton
            app.RemovesegmentedButton = uibutton(app.SegmentcrystalPanel, 'push');
            app.RemovesegmentedButton.ButtonPushedFcn = createCallbackFcn(app, @RemovesegmentedButtonPushed, true);
            app.RemovesegmentedButton.Position = [168 5 123 22];
            app.RemovesegmentedButton.Text = 'Remove segmented';

            % Create KeepsegmentedButton
            app.KeepsegmentedButton = uibutton(app.SegmentcrystalPanel, 'push');
            app.KeepsegmentedButton.ButtonPushedFcn = createCallbackFcn(app, @KeepsegmentedButtonPushed, true);
            app.KeepsegmentedButton.Position = [182 36 106 22];
            app.KeepsegmentedButton.Text = 'Keep segmented';

            % Create HolefillingfactorLabel
            app.HolefillingfactorLabel = uilabel(app.SegmentcrystalPanel);
            app.HolefillingfactorLabel.HorizontalAlignment = 'right';
            app.HolefillingfactorLabel.Position = [7 6 97 22];
            app.HolefillingfactorLabel.Text = 'Hole filling factor:';

            % Create HolefillingfactorEditField
            app.HolefillingfactorEditField = uieditfield(app.SegmentcrystalPanel, 'numeric');
            app.HolefillingfactorEditField.Limits = [1 1000];
            app.HolefillingfactorEditField.Position = [111 6 42 22];
            app.HolefillingfactorEditField.Value = 10;

            % Create MeasuredistancePanel
            app.MeasuredistancePanel = uipanel(app.MainTab);
            app.MeasuredistancePanel.Title = 'Measure distance';
            app.MeasuredistancePanel.Position = [309 273 355 51];

            % Create DistanceEditFieldLabel
            app.DistanceEditFieldLabel = uilabel(app.MeasuredistancePanel);
            app.DistanceEditFieldLabel.HorizontalAlignment = 'right';
            app.DistanceEditFieldLabel.Position = [170 5 52 22];
            app.DistanceEditFieldLabel.Text = 'Distance';

            % Create DistanceEditField
            app.DistanceEditField = uieditfield(app.MeasuredistancePanel, 'numeric');
            app.DistanceEditField.Position = [226 5 40 22];

            % Create PickpointsinmiddleimageButton
            app.PickpointsinmiddleimageButton = uibutton(app.MeasuredistancePanel, 'push');
            app.PickpointsinmiddleimageButton.ButtonPushedFcn = createCallbackFcn(app, @PickpointsinmiddleimageButtonPushed, true);
            app.PickpointsinmiddleimageButton.Position = [4 3 161 22];
            app.PickpointsinmiddleimageButton.Text = 'Pick points in middle image';

            % Create ClearButton
            app.ClearButton = uibutton(app.MeasuredistancePanel, 'push');
            app.ClearButton.ButtonPushedFcn = createCallbackFcn(app, @ClearButtonPushed, true);
            app.ClearButton.Position = [275 4 70 22];
            app.ClearButton.Text = 'Clear';

            % Create BackgroundcolorPanel
            app.BackgroundcolorPanel = uipanel(app.MainTab);
            app.BackgroundcolorPanel.Title = 'Background color:';
            app.BackgroundcolorPanel.Position = [671 272 196 52];

            % Create BackgroundcolorDropDown
            app.BackgroundcolorDropDown = uidropdown(app.BackgroundcolorPanel);
            app.BackgroundcolorDropDown.Items = {'Black', 'White'};
            app.BackgroundcolorDropDown.Position = [9 4 100 22];
            app.BackgroundcolorDropDown.Value = 'Black';

            % Create ChangeButton
            app.ChangeButton = uibutton(app.BackgroundcolorPanel, 'state');
            app.ChangeButton.ValueChangedFcn = createCallbackFcn(app, @ChangeButtonValueChanged, true);
            app.ChangeButton.Text = 'Change';
            app.ChangeButton.Position = [120 5 69 22];

            % Create MaskcreationfittingTab
            app.MaskcreationfittingTab = uitab(app.TabGroup);
            app.MaskcreationfittingTab.Title = 'Mask creation & fitting';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.MaskcreationfittingTab);
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.Position = [369 32 488 494];

            % Create InstructionsTextAreaLabel
            app.InstructionsTextAreaLabel = uilabel(app.MaskcreationfittingTab);
            app.InstructionsTextAreaLabel.HorizontalAlignment = 'right';
            app.InstructionsTextAreaLabel.FontSize = 16;
            app.InstructionsTextAreaLabel.FontWeight = 'bold';
            app.InstructionsTextAreaLabel.Position = [17 425 97 22];
            app.InstructionsTextAreaLabel.Text = 'Instructions';

            % Create InstructionsTextArea
            app.InstructionsTextArea = uitextarea(app.MaskcreationfittingTab);
            app.InstructionsTextArea.FontSize = 16;
            app.InstructionsTextArea.Position = [119 414 232 45];

            % Create PlotformaskcreationButton
            app.PlotformaskcreationButton = uibutton(app.MaskcreationfittingTab, 'push');
            app.PlotformaskcreationButton.ButtonPushedFcn = createCallbackFcn(app, @PlotformaskcreationButtonPushed, true);
            app.PlotformaskcreationButton.Position = [120 513 131 22];
            app.PlotformaskcreationButton.Text = 'Plot for mask creation';

            % Create PickdomainButton
            app.PickdomainButton = uibutton(app.MaskcreationfittingTab, 'push');
            app.PickdomainButton.ButtonPushedFcn = createCallbackFcn(app, @PickdomainButtonPushed, true);
            app.PickdomainButton.Position = [10 471 100 22];
            app.PickdomainButton.Text = 'Pick domain';

            % Create ZoominButton
            app.ZoominButton = uibutton(app.MaskcreationfittingTab, 'push');
            app.ZoominButton.ButtonPushedFcn = createCallbackFcn(app, @ZoominButtonPushed, true);
            app.ZoominButton.Position = [121 471 100 22];
            app.ZoominButton.Text = 'Zoom-in';

            % Create ZoomoutButton
            app.ZoomoutButton = uibutton(app.MaskcreationfittingTab, 'push');
            app.ZoomoutButton.ButtonPushedFcn = createCallbackFcn(app, @ZoomoutButtonPushed, true);
            app.ZoomoutButton.Position = [228 471 100 22];
            app.ZoomoutButton.Text = 'Zoom-out';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.MaskcreationfittingTab);
            app.TabGroup2.Position = [7 67 352 339];

            % Create HexagonalTab
            app.HexagonalTab = uitab(app.TabGroup2);
            app.HexagonalTab.Title = 'Hexagonal';

            % Create PickparticlesformaskhexagonButton
            app.PickparticlesformaskhexagonButton = uibutton(app.HexagonalTab, 'push');
            app.PickparticlesformaskhexagonButton.ButtonPushedFcn = createCallbackFcn(app, @PickparticlesformaskhexagonButtonPushed, true);
            app.PickparticlesformaskhexagonButton.Position = [5 247 193 22];
            app.PickparticlesformaskhexagonButton.Text = 'Pick particles for mask - hexagon';

            % Create CreatemaskhexagonButton
            app.CreatemaskhexagonButton = uibutton(app.HexagonalTab, 'push');
            app.CreatemaskhexagonButton.ButtonPushedFcn = createCallbackFcn(app, @CreatemaskhexagonButtonPushed, true);
            app.CreatemaskhexagonButton.Position = [205 247 140 22];
            app.CreatemaskhexagonButton.Text = 'Create mask - hexagon';

            % Create IdentifyorientationshexagonButton
            app.IdentifyorientationshexagonButton = uibutton(app.HexagonalTab, 'push');
            app.IdentifyorientationshexagonButton.ButtonPushedFcn = createCallbackFcn(app, @IdentifyorientationshexagonButtonPushed, true);
            app.IdentifyorientationshexagonButton.Position = [9 178 176 22];
            app.IdentifyorientationshexagonButton.Text = 'Identify orientations - hexagon';

            % Create OptimizemaskhexagonButton
            app.OptimizemaskhexagonButton = uibutton(app.HexagonalTab, 'push');
            app.OptimizemaskhexagonButton.ButtonPushedFcn = createCallbackFcn(app, @OptimizemaskhexagonButtonPushed, true);
            app.OptimizemaskhexagonButton.Position = [196 178 151 22];
            app.OptimizemaskhexagonButton.Text = 'Optimize mask - hexagon';

            % Create NumberofcolorsincolormapHexagonalEditFieldLabel
            app.NumberofcolorsincolormapHexagonalEditFieldLabel = uilabel(app.HexagonalTab);
            app.NumberofcolorsincolormapHexagonalEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofcolorsincolormapHexagonalEditFieldLabel.Position = [27 145 232 22];
            app.NumberofcolorsincolormapHexagonalEditFieldLabel.Text = 'Number of colors in colormap - Hexagonal';

            % Create NumberofcolorsincolormapHexagonalEditField
            app.NumberofcolorsincolormapHexagonalEditField = uieditfield(app.HexagonalTab, 'numeric');
            app.NumberofcolorsincolormapHexagonalEditField.Limits = [1 100];
            app.NumberofcolorsincolormapHexagonalEditField.Position = [274 145 36 22];
            app.NumberofcolorsincolormapHexagonalEditField.Value = 20;

            % Create ScreeningfactorshexagonalPanel
            app.ScreeningfactorshexagonalPanel = uipanel(app.HexagonalTab);
            app.ScreeningfactorshexagonalPanel.Title = 'Screening factors - hexagonal';
            app.ScreeningfactorshexagonalPanel.Position = [30 56 294 83];

            % Create MultiplicativehexagonalEditFieldLabel
            app.MultiplicativehexagonalEditFieldLabel = uilabel(app.ScreeningfactorshexagonalPanel);
            app.MultiplicativehexagonalEditFieldLabel.HorizontalAlignment = 'right';
            app.MultiplicativehexagonalEditFieldLabel.Position = [3 28 140 34];
            app.MultiplicativehexagonalEditFieldLabel.Text = 'Multiplicative - hexagonal';

            % Create MultiplicativehexagonalEditField
            app.MultiplicativehexagonalEditField = uieditfield(app.ScreeningfactorshexagonalPanel, 'numeric');
            app.MultiplicativehexagonalEditField.Limits = [0 Inf];
            app.MultiplicativehexagonalEditField.Position = [150 34 25 22];
            app.MultiplicativehexagonalEditField.Value = 6;

            % Create FractionhexagonalEditFieldLabel
            app.FractionhexagonalEditFieldLabel = uilabel(app.ScreeningfactorshexagonalPanel);
            app.FractionhexagonalEditFieldLabel.HorizontalAlignment = 'right';
            app.FractionhexagonalEditFieldLabel.Position = [6 7 114 22];
            app.FractionhexagonalEditFieldLabel.Text = 'Fraction - hexagonal';

            % Create FractionhexagonalEditField
            app.FractionhexagonalEditField = uieditfield(app.ScreeningfactorshexagonalPanel, 'numeric');
            app.FractionhexagonalEditField.Limits = [1 Inf];
            app.FractionhexagonalEditField.Position = [149 7 26 22];
            app.FractionhexagonalEditField.Value = 1.4;

            % Create SortButton
            app.SortButton = uibutton(app.ScreeningfactorshexagonalPanel, 'push');
            app.SortButton.ButtonPushedFcn = createCallbackFcn(app, @SortButtonPushed, true);
            app.SortButton.Position = [189 23 100 22];
            app.SortButton.Text = 'Sort';

            % Create ParallelcomputationSwitch_2Label
            app.ParallelcomputationSwitch_2Label = uilabel(app.HexagonalTab);
            app.ParallelcomputationSwitch_2Label.HorizontalAlignment = 'center';
            app.ParallelcomputationSwitch_2Label.Position = [58 215 114 22];
            app.ParallelcomputationSwitch_2Label.Text = 'Parallel computation';

            % Create ParallelcomputationSwitch_2
            app.ParallelcomputationSwitch_2 = uiswitch(app.HexagonalTab, 'slider');
            app.ParallelcomputationSwitch_2.ValueChangedFcn = createCallbackFcn(app, @ParallelcomputationSwitch_2ValueChanged, true);
            app.ParallelcomputationSwitch_2.Position = [200 216 45 20];
            app.ParallelcomputationSwitch_2.Value = 'On';

            % Create SymmetryhexagonSwitchLabel
            app.SymmetryhexagonSwitchLabel = uilabel(app.HexagonalTab);
            app.SymmetryhexagonSwitchLabel.HorizontalAlignment = 'center';
            app.SymmetryhexagonSwitchLabel.Position = [68 279 116 22];
            app.SymmetryhexagonSwitchLabel.Text = 'Symmetry - hexagon';

            % Create SymmetryhexagonSwitch
            app.SymmetryhexagonSwitch = uiswitch(app.HexagonalTab, 'slider');
            app.SymmetryhexagonSwitch.Items = {'2', '6'};
            app.SymmetryhexagonSwitch.Position = [208 279 45 20];
            app.SymmetryhexagonSwitch.Value = '2';

            % Create PlotoverlayhexagonalButton
            app.PlotoverlayhexagonalButton = uibutton(app.HexagonalTab, 'push');
            app.PlotoverlayhexagonalButton.ButtonPushedFcn = createCallbackFcn(app, @PlotoverlayhexagonalButtonPushed, true);
            app.PlotoverlayhexagonalButton.Position = [196 15 144 23];
            app.PlotoverlayhexagonalButton.Text = 'Plot overlay - hexagonal';

            % Create HexagonalmaskscentersCheckBox
            app.HexagonalmaskscentersCheckBox = uicheckbox(app.HexagonalTab);
            app.HexagonalmaskscentersCheckBox.Text = 'Hexagonal masks'' centers';
            app.HexagonalmaskscentersCheckBox.Position = [23 27 162 22];
            app.HexagonalmaskscentersCheckBox.Value = true;

            % Create ParticlescentersCheckBox_4
            app.ParticlescentersCheckBox_4 = uicheckbox(app.HexagonalTab);
            app.ParticlescentersCheckBox_4.Text = 'Particles'' centers';
            app.ParticlescentersCheckBox_4.Position = [23 4 113 22];
            app.ParticlescentersCheckBox_4.Value = true;

            % Create RectangularTab
            app.RectangularTab = uitab(app.TabGroup2);
            app.RectangularTab.Title = 'Rectangular';

            % Create PickparticlesformaskrectangleButton
            app.PickparticlesformaskrectangleButton = uibutton(app.RectangularTab, 'push');
            app.PickparticlesformaskrectangleButton.ButtonPushedFcn = createCallbackFcn(app, @PickparticlesformaskrectangleButtonPushed, true);
            app.PickparticlesformaskrectangleButton.Position = [5 253 196 22];
            app.PickparticlesformaskrectangleButton.Text = 'Pick particles for mask - rectangle';

            % Create CreatemaskrectangleButton
            app.CreatemaskrectangleButton = uibutton(app.RectangularTab, 'push');
            app.CreatemaskrectangleButton.ButtonPushedFcn = createCallbackFcn(app, @CreatemaskrectangleButtonPushed, true);
            app.CreatemaskrectangleButton.Position = [206 253 143 22];
            app.CreatemaskrectangleButton.Text = 'Create mask - rectangle';

            % Create IdentifyorientationsrectangleButton
            app.IdentifyorientationsrectangleButton = uibutton(app.RectangularTab, 'push');
            app.IdentifyorientationsrectangleButton.ButtonPushedFcn = createCallbackFcn(app, @IdentifyorientationsrectangleButtonPushed, true);
            app.IdentifyorientationsrectangleButton.Position = [4 190 179 22];
            app.IdentifyorientationsrectangleButton.Text = 'Identify orientations - rectangle';

            % Create SymmetryrectangleSwitchLabel
            app.SymmetryrectangleSwitchLabel = uilabel(app.RectangularTab);
            app.SymmetryrectangleSwitchLabel.HorizontalAlignment = 'center';
            app.SymmetryrectangleSwitchLabel.Position = [53 283 119 22];
            app.SymmetryrectangleSwitchLabel.Text = 'Symmetry - rectangle';

            % Create SymmetryrectangleSwitch
            app.SymmetryrectangleSwitch = uiswitch(app.RectangularTab, 'slider');
            app.SymmetryrectangleSwitch.Items = {'2', '4'};
            app.SymmetryrectangleSwitch.Position = [195 283 45 20];
            app.SymmetryrectangleSwitch.Value = '2';

            % Create OptimizemaskrectangleButton
            app.OptimizemaskrectangleButton = uibutton(app.RectangularTab, 'push');
            app.OptimizemaskrectangleButton.ButtonPushedFcn = createCallbackFcn(app, @OptimizemaskrectangleButtonPushed, true);
            app.OptimizemaskrectangleButton.Position = [190 190 155 22];
            app.OptimizemaskrectangleButton.Text = 'Optimize mask - rectangle';

            % Create NumberofcolorsincolormaprectangleEditFieldLabel
            app.NumberofcolorsincolormaprectangleEditFieldLabel = uilabel(app.RectangularTab);
            app.NumberofcolorsincolormaprectangleEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofcolorsincolormaprectangleEditFieldLabel.Position = [7 151 224 22];
            app.NumberofcolorsincolormaprectangleEditFieldLabel.Text = 'Number of colors in colormap - rectangle';

            % Create NumberofcolorsincolormaprectangleEditField
            app.NumberofcolorsincolormaprectangleEditField = uieditfield(app.RectangularTab, 'numeric');
            app.NumberofcolorsincolormaprectangleEditField.Limits = [1 100];
            app.NumberofcolorsincolormaprectangleEditField.Position = [246 151 41 22];
            app.NumberofcolorsincolormaprectangleEditField.Value = 20;

            % Create ScreeningfactorsrectangularPanel
            app.ScreeningfactorsrectangularPanel = uipanel(app.RectangularTab);
            app.ScreeningfactorsrectangularPanel.Title = 'Screening factors  - rectangular';
            app.ScreeningfactorsrectangularPanel.Position = [25 58 308 82];

            % Create MultiplicativerectangularEditFieldLabel
            app.MultiplicativerectangularEditFieldLabel = uilabel(app.ScreeningfactorsrectangularPanel);
            app.MultiplicativerectangularEditFieldLabel.HorizontalAlignment = 'right';
            app.MultiplicativerectangularEditFieldLabel.Position = [3 35 144 22];
            app.MultiplicativerectangularEditFieldLabel.Text = 'Multiplicative - rectangular';

            % Create MultiplicativerectangularEditField
            app.MultiplicativerectangularEditField = uieditfield(app.ScreeningfactorsrectangularPanel, 'numeric');
            app.MultiplicativerectangularEditField.Limits = [0.1 100];
            app.MultiplicativerectangularEditField.Position = [156 34 33 22];
            app.MultiplicativerectangularEditField.Value = 4;

            % Create FractionrectangularEditFieldLabel
            app.FractionrectangularEditFieldLabel = uilabel(app.ScreeningfactorsrectangularPanel);
            app.FractionrectangularEditFieldLabel.HorizontalAlignment = 'right';
            app.FractionrectangularEditFieldLabel.Position = [3 8 116 22];
            app.FractionrectangularEditFieldLabel.Text = 'Fraction -rectangular';

            % Create FractionrectangularEditField
            app.FractionrectangularEditField = uieditfield(app.ScreeningfactorsrectangularPanel, 'numeric');
            app.FractionrectangularEditField.Limits = [1 100];
            app.FractionrectangularEditField.Position = [153 8 34 22];
            app.FractionrectangularEditField.Value = 1.4;

            % Create SortrectangularButton
            app.SortrectangularButton = uibutton(app.ScreeningfactorsrectangularPanel, 'push');
            app.SortrectangularButton.ButtonPushedFcn = createCallbackFcn(app, @SortrectangularButtonPushed, true);
            app.SortrectangularButton.Position = [200 24 100 23];
            app.SortrectangularButton.Text = 'Sort rectangular';

            % Create ParallelcomputationSwitchLabel
            app.ParallelcomputationSwitchLabel = uilabel(app.RectangularTab);
            app.ParallelcomputationSwitchLabel.HorizontalAlignment = 'center';
            app.ParallelcomputationSwitchLabel.Position = [61 223 114 22];
            app.ParallelcomputationSwitchLabel.Text = 'Parallel computation';

            % Create ParallelcomputationSwitch
            app.ParallelcomputationSwitch = uiswitch(app.RectangularTab, 'slider');
            app.ParallelcomputationSwitch.ValueChangedFcn = createCallbackFcn(app, @ParallelcomputationSwitchValueChanged, true);
            app.ParallelcomputationSwitch.Position = [203 224 45 20];
            app.ParallelcomputationSwitch.Value = 'On';

            % Create PlotoverlayrectangularButton
            app.PlotoverlayrectangularButton = uibutton(app.RectangularTab, 'push');
            app.PlotoverlayrectangularButton.ButtonPushedFcn = createCallbackFcn(app, @PlotoverlayrectangularButtonPushed, true);
            app.PlotoverlayrectangularButton.Position = [193 19 148 23];
            app.PlotoverlayrectangularButton.Text = 'Plot overlay - rectangular';

            % Create RectangularmaskscentersCheckBox
            app.RectangularmaskscentersCheckBox = uicheckbox(app.RectangularTab);
            app.RectangularmaskscentersCheckBox.Text = 'Rectangular masks'' centers';
            app.RectangularmaskscentersCheckBox.Position = [20 34 170 22];
            app.RectangularmaskscentersCheckBox.Value = true;

            % Create ParticlescentersCheckBox_5
            app.ParticlescentersCheckBox_5 = uicheckbox(app.RectangularTab);
            app.ParticlescentersCheckBox_5.Text = 'Particles'' centers';
            app.ParticlescentersCheckBox_5.Position = [21 8 113 22];
            app.ParticlescentersCheckBox_5.Value = true;

            % Create TriangularTab
            app.TriangularTab = uitab(app.TabGroup2);
            app.TriangularTab.Title = 'Triangular';

            % Create PickparticlesformasktriangularButton
            app.PickparticlesformasktriangularButton = uibutton(app.TriangularTab, 'push');
            app.PickparticlesformasktriangularButton.ButtonPushedFcn = createCallbackFcn(app, @PickparticlesformasktriangularButtonPushed, true);
            app.PickparticlesformasktriangularButton.Position = [4 283 197 22];
            app.PickparticlesformasktriangularButton.Text = 'Pick particles for mask - triangular';

            % Create CreatemasktriangularButton
            app.CreatemasktriangularButton = uibutton(app.TriangularTab, 'push');
            app.CreatemasktriangularButton.ButtonPushedFcn = createCallbackFcn(app, @CreatemasktriangularButtonPushed, true);
            app.CreatemasktriangularButton.Position = [205 283 144 22];
            app.CreatemasktriangularButton.Text = 'Create mask - triangular';

            % Create IdentifyorientationstriangularButton
            app.IdentifyorientationstriangularButton = uibutton(app.TriangularTab, 'push');
            app.IdentifyorientationstriangularButton.ButtonPushedFcn = createCallbackFcn(app, @IdentifyorientationstriangularButtonPushed, true);
            app.IdentifyorientationstriangularButton.Position = [4 211 180 22];
            app.IdentifyorientationstriangularButton.Text = 'Identify orientations - triangular';

            % Create OptimizemasktriangularButton
            app.OptimizemasktriangularButton = uibutton(app.TriangularTab, 'push');
            app.OptimizemasktriangularButton.ButtonPushedFcn = createCallbackFcn(app, @OptimizemasktriangularButtonPushed, true);
            app.OptimizemasktriangularButton.Position = [191 211 155 22];
            app.OptimizemasktriangularButton.Text = 'Optimize mask - triangular';

            % Create NumberofcolorsincolormaptriangularEditFieldLabel
            app.NumberofcolorsincolormaptriangularEditFieldLabel = uilabel(app.TriangularTab);
            app.NumberofcolorsincolormaptriangularEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofcolorsincolormaptriangularEditFieldLabel.Position = [30 167 225 22];
            app.NumberofcolorsincolormaptriangularEditFieldLabel.Text = 'Number of colors in colormap - triangular';

            % Create NumberofcolorsincolormaptriangularEditField
            app.NumberofcolorsincolormaptriangularEditField = uieditfield(app.TriangularTab, 'numeric');
            app.NumberofcolorsincolormaptriangularEditField.Limits = [1 100];
            app.NumberofcolorsincolormaptriangularEditField.Position = [269 166 37 22];
            app.NumberofcolorsincolormaptriangularEditField.Value = 20;

            % Create ScreeningfactorstriangularPanel
            app.ScreeningfactorstriangularPanel = uipanel(app.TriangularTab);
            app.ScreeningfactorstriangularPanel.Title = 'Screening factors  - triangular';
            app.ScreeningfactorstriangularPanel.Position = [23 70 307 76];

            % Create MultiplicativetriangularEditFieldLabel
            app.MultiplicativetriangularEditFieldLabel = uilabel(app.ScreeningfactorstriangularPanel);
            app.MultiplicativetriangularEditFieldLabel.HorizontalAlignment = 'right';
            app.MultiplicativetriangularEditFieldLabel.Position = [9 28 135 22];
            app.MultiplicativetriangularEditFieldLabel.Text = 'Multiplicative - triangular';

            % Create MultiplicativetriangularEditField
            app.MultiplicativetriangularEditField = uieditfield(app.ScreeningfactorstriangularPanel, 'numeric');
            app.MultiplicativetriangularEditField.Limits = [0.1 100];
            app.MultiplicativetriangularEditField.Position = [153 27 33 22];
            app.MultiplicativetriangularEditField.Value = 3;

            % Create FractiontriangularEditFieldLabel
            app.FractiontriangularEditFieldLabel = uilabel(app.ScreeningfactorstriangularPanel);
            app.FractiontriangularEditFieldLabel.HorizontalAlignment = 'right';
            app.FractiontriangularEditFieldLabel.Position = [14 2 109 22];
            app.FractiontriangularEditFieldLabel.Text = 'Fraction - triangular';

            % Create FractiontriangularEditField
            app.FractiontriangularEditField = uieditfield(app.ScreeningfactorstriangularPanel, 'numeric');
            app.FractiontriangularEditField.Limits = [1 100];
            app.FractiontriangularEditField.Position = [153 2 34 22];
            app.FractiontriangularEditField.Value = 1.4;

            % Create SorttriangularButton
            app.SorttriangularButton = uibutton(app.ScreeningfactorstriangularPanel, 'push');
            app.SorttriangularButton.ButtonPushedFcn = createCallbackFcn(app, @SorttriangularButtonPushed, true);
            app.SorttriangularButton.Position = [197 16 100 22];
            app.SorttriangularButton.Text = 'Sort triangular';

            % Create ParallelcomputationSwitch_3Label
            app.ParallelcomputationSwitch_3Label = uilabel(app.TriangularTab);
            app.ParallelcomputationSwitch_3Label.HorizontalAlignment = 'center';
            app.ParallelcomputationSwitch_3Label.Position = [51 247 114 22];
            app.ParallelcomputationSwitch_3Label.Text = 'Parallel computation';

            % Create ParallelcomputationSwitch_3
            app.ParallelcomputationSwitch_3 = uiswitch(app.TriangularTab, 'slider');
            app.ParallelcomputationSwitch_3.ValueChangedFcn = createCallbackFcn(app, @ParallelcomputationSwitch_3ValueChanged, true);
            app.ParallelcomputationSwitch_3.Position = [193 248 45 20];
            app.ParallelcomputationSwitch_3.Value = 'On';

            % Create PlotoverlaytriangularButton
            app.PlotoverlaytriangularButton = uibutton(app.TriangularTab, 'push');
            app.PlotoverlaytriangularButton.ButtonPushedFcn = createCallbackFcn(app, @PlotoverlaytriangularButtonPushed, true);
            app.PlotoverlaytriangularButton.Position = [198 19 138 23];
            app.PlotoverlaytriangularButton.Text = 'Plot overlay - triangular';

            % Create TriangularmaskscentersCheckBox
            app.TriangularmaskscentersCheckBox = uicheckbox(app.TriangularTab);
            app.TriangularmaskscentersCheckBox.Text = 'Triangular masks'' centers';
            app.TriangularmaskscentersCheckBox.Position = [20 34 159 22];
            app.TriangularmaskscentersCheckBox.Value = true;

            % Create ParticlescentersCheckBox_6
            app.ParticlescentersCheckBox_6 = uicheckbox(app.TriangularTab);
            app.ParticlescentersCheckBox_6.Text = 'Particles'' centers';
            app.ParticlescentersCheckBox_6.Position = [21 8 113 22];
            app.ParticlescentersCheckBox_6.Value = true;

            % Create AdjustcontrastdeleteparticlesTab
            app.AdjustcontrastdeleteparticlesTab = uitab(app.TabGroup);
            app.AdjustcontrastdeleteparticlesTab.Title = 'Adjust contrast & delete particles';

            % Create UIAxes2_2
            app.UIAxes2_2 = uiaxes(app.AdjustcontrastdeleteparticlesTab);
            zlabel(app.UIAxes2_2, 'Z')
            app.UIAxes2_2.Position = [334 20 516 502];

            % Create ShowcentersCheckBox
            app.ShowcentersCheckBox = uicheckbox(app.AdjustcontrastdeleteparticlesTab);
            app.ShowcentersCheckBox.Text = 'Show centers';
            app.ShowcentersCheckBox.Position = [125 491 95 22];
            app.ShowcentersCheckBox.Value = true;

            % Create PlotforcorrectionButton
            app.PlotforcorrectionButton = uibutton(app.AdjustcontrastdeleteparticlesTab, 'push');
            app.PlotforcorrectionButton.ButtonPushedFcn = createCallbackFcn(app, @PlotforcorrectionButtonPushed, true);
            app.PlotforcorrectionButton.Position = [117 466 109 22];
            app.PlotforcorrectionButton.Text = 'Plot for correction';

            % Create DeletecentersPanel
            app.DeletecentersPanel = uipanel(app.AdjustcontrastdeleteparticlesTab);
            app.DeletecentersPanel.Title = 'Delete centers';
            app.DeletecentersPanel.Position = [58 364 260 95];

            % Create ChooseparticleButton
            app.ChooseparticleButton = uibutton(app.DeletecentersPanel, 'push');
            app.ChooseparticleButton.ButtonPushedFcn = createCallbackFcn(app, @ChooseparticleButtonPushed, true);
            app.ChooseparticleButton.Position = [68 43 100 22];
            app.ChooseparticleButton.Text = 'Choose particle';

            % Create DeleteparticleButton
            app.DeleteparticleButton = uibutton(app.DeletecentersPanel, 'push');
            app.DeleteparticleButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteparticleButtonPushed, true);
            app.DeleteparticleButton.Position = [68 11 100 22];
            app.DeleteparticleButton.Text = 'Delete particle';

            % Create CorrectcontrastindomainPanel
            app.CorrectcontrastindomainPanel = uipanel(app.AdjustcontrastdeleteparticlesTab);
            app.CorrectcontrastindomainPanel.Title = 'Correct contrast in domain';
            app.CorrectcontrastindomainPanel.Position = [58 172 260 186];

            % Create MarkDomainButton
            app.MarkDomainButton = uibutton(app.CorrectcontrastindomainPanel, 'push');
            app.MarkDomainButton.ButtonPushedFcn = createCallbackFcn(app, @MarkDomainButtonPushed, true);
            app.MarkDomainButton.Position = [75 136 100 22];
            app.MarkDomainButton.Text = 'Mark Domain';

            % Create ImAdjustindomainButton
            app.ImAdjustindomainButton = uibutton(app.CorrectcontrastindomainPanel, 'push');
            app.ImAdjustindomainButton.ButtonPushedFcn = createCallbackFcn(app, @ImAdjustindomainButtonPushed, true);
            app.ImAdjustindomainButton.Position = [67 105 117 23];
            app.ImAdjustindomainButton.Text = 'ImAdjust in domain';

            % Create HistEqindomainButton
            app.HistEqindomainButton = uibutton(app.CorrectcontrastindomainPanel, 'push');
            app.HistEqindomainButton.ButtonPushedFcn = createCallbackFcn(app, @HistEqindomainButtonPushed, true);
            app.HistEqindomainButton.Position = [73 76 106 22];
            app.HistEqindomainButton.Text = 'HistEq in domain';

            % Create AdaptHistEqindomainButton
            app.AdaptHistEqindomainButton = uibutton(app.CorrectcontrastindomainPanel, 'push');
            app.AdaptHistEqindomainButton.ButtonPushedFcn = createCallbackFcn(app, @AdaptHistEqindomainButtonPushed, true);
            app.AdaptHistEqindomainButton.Position = [61 46 137 22];
            app.AdaptHistEqindomainButton.Text = 'AdaptHistEq in domain';

            % Create SaveadjustedimageButton
            app.SaveadjustedimageButton = uibutton(app.CorrectcontrastindomainPanel, 'push');
            app.SaveadjustedimageButton.ButtonPushedFcn = createCallbackFcn(app, @SaveadjustedimageButtonPushed, true);
            app.SaveadjustedimageButton.Position = [66 14 127 23];
            app.SaveadjustedimageButton.Text = 'Save adjusted image';

            % Create WorkinpanelsPanel
            app.WorkinpanelsPanel = uipanel(app.AdjustcontrastdeleteparticlesTab);
            app.WorkinpanelsPanel.Title = 'Work in panels';
            app.WorkinpanelsPanel.Position = [60 55 258 109];

            % Create SizeofpanelinpixelsEditFieldLabel
            app.SizeofpanelinpixelsEditFieldLabel = uilabel(app.WorkinpanelsPanel);
            app.SizeofpanelinpixelsEditFieldLabel.HorizontalAlignment = 'right';
            app.SizeofpanelinpixelsEditFieldLabel.Position = [10 60 121 22];
            app.SizeofpanelinpixelsEditFieldLabel.Text = 'Size of panel in pixels';

            % Create SizeofpanelinpixelsEditField
            app.SizeofpanelinpixelsEditField = uieditfield(app.WorkinpanelsPanel, 'numeric');
            app.SizeofpanelinpixelsEditField.Limits = [10 1000];
            app.SizeofpanelinpixelsEditField.Position = [182 60 64 22];
            app.SizeofpanelinpixelsEditField.Value = 50;

            % Create ShowdivisionButton
            app.ShowdivisionButton = uibutton(app.WorkinpanelsPanel, 'push');
            app.ShowdivisionButton.ButtonPushedFcn = createCallbackFcn(app, @ShowdivisionButtonPushed, true);
            app.ShowdivisionButton.Position = [79 32 100 22];
            app.ShowdivisionButton.Text = 'Show division';

            % Create AdaptHistEqinpanelsButton
            app.AdaptHistEqinpanelsButton = uibutton(app.WorkinpanelsPanel, 'push');
            app.AdaptHistEqinpanelsButton.ButtonPushedFcn = createCallbackFcn(app, @AdaptHistEqinpanelsButtonPushed, true);
            app.AdaptHistEqinpanelsButton.Position = [6 5 133 22];
            app.AdaptHistEqinpanelsButton.Text = 'AdaptHistEq in panels';

            % Create SaveoutcomeButton
            app.SaveoutcomeButton = uibutton(app.WorkinpanelsPanel, 'push');
            app.SaveoutcomeButton.ButtonPushedFcn = createCallbackFcn(app, @SaveoutcomeButtonPushed, true);
            app.SaveoutcomeButton.Position = [150 5 100 22];
            app.SaveoutcomeButton.Text = 'Save outcome';

            % Create AnalyzedirectionsTab
            app.AnalyzedirectionsTab = uitab(app.TabGroup);
            app.AnalyzedirectionsTab.Title = 'Analyze directions';

            % Create UIAxes2_3
            app.UIAxes2_3 = uiaxes(app.AnalyzedirectionsTab);
            zlabel(app.UIAxes2_3, 'Z')
            app.UIAxes2_3.Position = [331 21 515 505];

            % Create PlotwithdirectionsButton
            app.PlotwithdirectionsButton = uibutton(app.AnalyzedirectionsTab, 'push');
            app.PlotwithdirectionsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotwithdirectionsButtonPushed, true);
            app.PlotwithdirectionsButton.Position = [130 392 115 22];
            app.PlotwithdirectionsButton.Text = 'Plot with directions';

            % Create MeasureangleatregionPanel
            app.MeasureangleatregionPanel = uipanel(app.AnalyzedirectionsTab);
            app.MeasureangleatregionPanel.Title = 'Measure angle at region';
            app.MeasureangleatregionPanel.Position = [47 226 270 159];

            % Create AddpointtoregionButton
            app.AddpointtoregionButton = uibutton(app.MeasureangleatregionPanel, 'push');
            app.AddpointtoregionButton.ButtonPushedFcn = createCallbackFcn(app, @AddpointtoregionButtonPushed, true);
            app.AddpointtoregionButton.Position = [75 111 116 22];
            app.AddpointtoregionButton.Text = 'Add point to region';

            % Create CreateregionButton
            app.CreateregionButton = uibutton(app.MeasureangleatregionPanel, 'push');
            app.CreateregionButton.ButtonPushedFcn = createCallbackFcn(app, @CreateregionButtonPushed, true);
            app.CreateregionButton.Position = [85 80 100 22];
            app.CreateregionButton.Text = 'Create region';

            % Create MeanangleinregionTextAreaLabel
            app.MeanangleinregionTextAreaLabel = uilabel(app.MeasureangleatregionPanel);
            app.MeanangleinregionTextAreaLabel.HorizontalAlignment = 'right';
            app.MeanangleinregionTextAreaLabel.FontSize = 14;
            app.MeanangleinregionTextAreaLabel.Position = [6 46 136 22];
            app.MeanangleinregionTextAreaLabel.Text = 'Mean angle in region';

            % Create MeanangleinregionTextArea
            app.MeanangleinregionTextArea = uitextarea(app.MeasureangleatregionPanel);
            app.MeanangleinregionTextArea.FontSize = 16;
            app.MeanangleinregionTextArea.Position = [157 40 99 34];

            % Create ClearregionButton
            app.ClearregionButton = uibutton(app.MeasureangleatregionPanel, 'push');
            app.ClearregionButton.ButtonPushedFcn = createCallbackFcn(app, @ClearregionButtonPushed, true);
            app.ClearregionButton.Position = [84 6 100 22];
            app.ClearregionButton.Text = 'Clear region';

            % Create ClusteranglesPanel
            app.ClusteranglesPanel = uipanel(app.AnalyzedirectionsTab);
            app.ClusteranglesPanel.Title = 'Cluster angles';
            app.ClusteranglesPanel.Position = [48 131 269 87];

            % Create NumberofclustersinregionEditFieldLabel
            app.NumberofclustersinregionEditFieldLabel = uilabel(app.ClusteranglesPanel);
            app.NumberofclustersinregionEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofclustersinregionEditFieldLabel.Position = [28 37 155 22];
            app.NumberofclustersinregionEditFieldLabel.Text = 'Number of clusters in region';

            % Create NumberofclustersinregionEditField
            app.NumberofclustersinregionEditField = uieditfield(app.ClusteranglesPanel, 'numeric');
            app.NumberofclustersinregionEditField.Limits = [1 50];
            app.NumberofclustersinregionEditField.Position = [193 37 46 22];
            app.NumberofclustersinregionEditField.Value = 10;

            % Create PlotadjustedtoclustersButton
            app.PlotadjustedtoclustersButton = uibutton(app.ClusteranglesPanel, 'push');
            app.PlotadjustedtoclustersButton.ButtonPushedFcn = createCallbackFcn(app, @PlotadjustedtoclustersButtonPushed, true);
            app.PlotadjustedtoclustersButton.Position = [60 6 143 23];
            app.PlotadjustedtoclustersButton.Text = 'Plot adjusted to clusters';

            % Create ChoosemaskstypeButtonGroup
            app.ChoosemaskstypeButtonGroup = uibuttongroup(app.AnalyzedirectionsTab);
            app.ChoosemaskstypeButtonGroup.Title = 'Choose masks type';
            app.ChoosemaskstypeButtonGroup.Position = [131 421 123 103];

            % Create HexagonalButton
            app.HexagonalButton = uiradiobutton(app.ChoosemaskstypeButtonGroup);
            app.HexagonalButton.Text = 'Hexagonal';
            app.HexagonalButton.Position = [11 57 79 22];
            app.HexagonalButton.Value = true;

            % Create RectangularButton
            app.RectangularButton = uiradiobutton(app.ChoosemaskstypeButtonGroup);
            app.RectangularButton.Text = 'Rectangular';
            app.RectangularButton.Position = [11 35 87 22];

            % Create TriangularButton
            app.TriangularButton = uiradiobutton(app.ChoosemaskstypeButtonGroup);
            app.TriangularButton.Text = 'Triangular';
            app.TriangularButton.Position = [11 12 75 22];

            % Create PickadjustedcolormapPanel
            app.PickadjustedcolormapPanel = uipanel(app.AnalyzedirectionsTab);
            app.PickadjustedcolormapPanel.Title = 'Pick adjusted colormap';
            app.PickadjustedcolormapPanel.Position = [48 12 269 105];

            % Create PlotButton_4
            app.PlotButton_4 = uibutton(app.PickadjustedcolormapPanel, 'push');
            app.PlotButton_4.ButtonPushedFcn = createCallbackFcn(app, @PlotButton_4Pushed, true);
            app.PlotButton_4.Position = [83 4 100 22];
            app.PlotButton_4.Text = 'Plot';

            % Create Angle1fromEditFieldLabel
            app.Angle1fromEditFieldLabel = uilabel(app.PickadjustedcolormapPanel);
            app.Angle1fromEditFieldLabel.HorizontalAlignment = 'right';
            app.Angle1fromEditFieldLabel.Position = [50 55 88 22];
            app.Angle1fromEditFieldLabel.Text = 'Angle #1 (from)';

            % Create Angle1fromEditField
            app.Angle1fromEditField = uieditfield(app.PickadjustedcolormapPanel, 'numeric');
            app.Angle1fromEditField.Limits = [0 180];
            app.Angle1fromEditField.Position = [146 55 60 22];

            % Create Angle2toEditFieldLabel
            app.Angle2toEditFieldLabel = uilabel(app.PickadjustedcolormapPanel);
            app.Angle2toEditFieldLabel.HorizontalAlignment = 'right';
            app.Angle2toEditFieldLabel.Position = [51 30 74 22];
            app.Angle2toEditFieldLabel.Text = 'Angle #2 (to)';

            % Create Angle2toEditField
            app.Angle2toEditField = uieditfield(app.PickadjustedcolormapPanel, 'numeric');
            app.Angle2toEditField.Limits = [0 180];
            app.Angle2toEditField.Position = [146 30 60 22];
            app.Angle2toEditField.Value = 180;

            % Create TessellationstrainshexagonalTab
            app.TessellationstrainshexagonalTab = uitab(app.TabGroup);
            app.TessellationstrainshexagonalTab.Title = 'Tessellation & strains - hexagonal';

            % Create UIAxes2_4
            app.UIAxes2_4 = uiaxes(app.TessellationstrainshexagonalTab);
            zlabel(app.UIAxes2_4, 'Z')
            app.UIAxes2_4.Position = [340 12 510 509];

            % Create AssociateparticleswithmasksPanel
            app.AssociateparticleswithmasksPanel = uipanel(app.TessellationstrainshexagonalTab);
            app.AssociateparticleswithmasksPanel.Title = 'Associate particles with masks';
            app.AssociateparticleswithmasksPanel.Position = [29 401 295 107];

            % Create ParticlesCheckBox
            app.ParticlesCheckBox = uicheckbox(app.AssociateparticleswithmasksPanel);
            app.ParticlesCheckBox.Text = 'Particles';
            app.ParticlesCheckBox.Position = [15 58 68 22];
            app.ParticlesCheckBox.Value = true;

            % Create MaskscentersCheckBox
            app.MaskscentersCheckBox = uicheckbox(app.AssociateparticleswithmasksPanel);
            app.MaskscentersCheckBox.Text = 'Masks'' centers';
            app.MaskscentersCheckBox.Position = [17 33 102 22];
            app.MaskscentersCheckBox.Value = true;

            % Create PlotButton
            app.PlotButton = uibutton(app.AssociateparticleswithmasksPanel, 'push');
            app.PlotButton.ButtonPushedFcn = createCallbackFcn(app, @PlotButtonPushed, true);
            app.PlotButton.Position = [129 43 100 22];
            app.PlotButton.Text = 'Plot';

            % Create PlotassociationofparticleswithmaskscentersButton
            app.PlotassociationofparticleswithmaskscentersButton = uibutton(app.AssociateparticleswithmasksPanel, 'push');
            app.PlotassociationofparticleswithmaskscentersButton.ButtonPushedFcn = createCallbackFcn(app, @PlotassociationofparticleswithmaskscentersButtonPushed, true);
            app.PlotassociationofparticleswithmaskscentersButton.Position = [10 6 271 22];
            app.PlotassociationofparticleswithmaskscentersButton.Text = 'Plot association of particles with masks'' centers';

            % Create TabGroup3
            app.TabGroup3 = uitabgroup(app.TessellationstrainshexagonalTab);
            app.TabGroup3.Position = [28 76 296 311];

            % Create TessellateforparticleheightTab
            app.TessellateforparticleheightTab = uitab(app.TabGroup3);
            app.TessellateforparticleheightTab.Title = 'Tessellate for particle height';

            % Create AssigndirectionsclusterwithminimalenergyButton
            app.AssigndirectionsclusterwithminimalenergyButton = uibutton(app.TessellateforparticleheightTab, 'push');
            app.AssigndirectionsclusterwithminimalenergyButton.ButtonPushedFcn = createCallbackFcn(app, @AssigndirectionsclusterwithminimalenergyButtonPushed, true);
            app.AssigndirectionsclusterwithminimalenergyButton.Position = [13 213 264 22];
            app.AssigndirectionsclusterwithminimalenergyButton.Text = 'Assign directions - cluster with minimal energy';

            % Create FlipallButton
            app.FlipallButton = uibutton(app.TessellateforparticleheightTab, 'push');
            app.FlipallButton.ButtonPushedFcn = createCallbackFcn(app, @FlipallButtonPushed, true);
            app.FlipallButton.Position = [96 186 100 22];
            app.FlipallButton.Text = 'Flip all';

            % Create StartfromhulloflowestenergyLabel
            app.StartfromhulloflowestenergyLabel = uilabel(app.TessellateforparticleheightTab);
            app.StartfromhulloflowestenergyLabel.FontWeight = 'bold';
            app.StartfromhulloflowestenergyLabel.FontAngle = 'italic';
            app.StartfromhulloflowestenergyLabel.Position = [66 236 185 22];
            app.StartfromhulloflowestenergyLabel.Text = 'Start from hull of lowest energy';

            % Create StartfromchosenhullLabel
            app.StartfromchosenhullLabel = uilabel(app.TessellateforparticleheightTab);
            app.StartfromchosenhullLabel.FontWeight = 'bold';
            app.StartfromchosenhullLabel.FontAngle = 'italic';
            app.StartfromchosenhullLabel.Position = [81 148 136 22];
            app.StartfromchosenhullLabel.Text = 'Start from chosen hull ';

            % Create ChoosemaskButton
            app.ChoosemaskButton = uibutton(app.TessellateforparticleheightTab, 'push');
            app.ChoosemaskButton.ButtonPushedFcn = createCallbackFcn(app, @ChoosemaskButtonPushed, true);
            app.ChoosemaskButton.Position = [97 120 100 22];
            app.ChoosemaskButton.Text = 'Choose mask';

            % Create AssigndirectionschosenButton
            app.AssigndirectionschosenButton = uibutton(app.TessellateforparticleheightTab, 'push');
            app.AssigndirectionschosenButton.ButtonPushedFcn = createCallbackFcn(app, @AssigndirectionschosenButtonPushed, true);
            app.AssigndirectionschosenButton.Position = [66 92 155 22];
            app.AssigndirectionschosenButton.Text = 'Assign directions - chosen';

            % Create FlipchosenButton
            app.FlipchosenButton = uibutton(app.TessellateforparticleheightTab, 'push');
            app.FlipchosenButton.ButtonPushedFcn = createCallbackFcn(app, @FlipchosenButtonPushed, true);
            app.FlipchosenButton.Position = [100 64 100 22];
            app.FlipchosenButton.Text = 'Flip chosen';

            % Create StrainsTab
            app.StrainsTab = uitab(app.TabGroup3);
            app.StrainsTab.Title = 'Strains';

            % Create RangeofcolorbarfordeviationsLabel_2
            app.RangeofcolorbarfordeviationsLabel_2 = uilabel(app.StrainsTab);
            app.RangeofcolorbarfordeviationsLabel_2.FontWeight = 'bold';
            app.RangeofcolorbarfordeviationsLabel_2.FontAngle = 'italic';
            app.RangeofcolorbarfordeviationsLabel_2.Position = [48 252 191 22];
            app.RangeofcolorbarfordeviationsLabel_2.Text = 'Range of colorbar for deviations';

            % Create Switch_5
            app.Switch_5 = uiswitch(app.StrainsTab, 'slider');
            app.Switch_5.Items = {'Symmetric range', 'Min-Max'};
            app.Switch_5.Position = [133 227 45 20];
            app.Switch_5.Value = 'Symmetric range';

            % Create PlotdeviationsButton
            app.PlotdeviationsButton = uibutton(app.StrainsTab, 'push');
            app.PlotdeviationsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotdeviationsButtonPushed, true);
            app.PlotdeviationsButton.Position = [103 55 100 22];
            app.PlotdeviationsButton.Text = 'Plot deviations';

            % Create OutliersscreeningLabel_2
            app.OutliersscreeningLabel_2 = uilabel(app.StrainsTab);
            app.OutliersscreeningLabel_2.FontWeight = 'bold';
            app.OutliersscreeningLabel_2.FontAngle = 'italic';
            app.OutliersscreeningLabel_2.Position = [92 197 111 22];
            app.OutliersscreeningLabel_2.Text = 'Outliers screening';

            % Create StandarddeviationskeptfrommeanEditField_2Label
            app.StandarddeviationskeptfrommeanEditField_2Label = uilabel(app.StrainsTab);
            app.StandarddeviationskeptfrommeanEditField_2Label.HorizontalAlignment = 'right';
            app.StandarddeviationskeptfrommeanEditField_2Label.Position = [20 173 199 22];
            app.StandarddeviationskeptfrommeanEditField_2Label.Text = 'Standard deviations kept from mean';

            % Create StandarddeviationskeptfrommeanEditField_2
            app.StandarddeviationskeptfrommeanEditField_2 = uieditfield(app.StrainsTab, 'numeric');
            app.StandarddeviationskeptfrommeanEditField_2.Limits = [0 100];
            app.StandarddeviationskeptfrommeanEditField_2.Position = [238 173 34 22];
            app.StandarddeviationskeptfrommeanEditField_2.Value = 5;

            % Create MeanedgeLabel
            app.MeanedgeLabel = uilabel(app.StrainsTab);
            app.MeanedgeLabel.HorizontalAlignment = 'right';
            app.MeanedgeLabel.Position = [33 16 69 22];
            app.MeanedgeLabel.Text = 'Mean edge:';

            % Create MeanedgeTextArea
            app.MeanedgeTextArea = uitextarea(app.StrainsTab);
            app.MeanedgeTextArea.Position = [117 6 150 42];

            % Create DeviationsfromSwitchLabel
            app.DeviationsfromSwitchLabel = uilabel(app.StrainsTab);
            app.DeviationsfromSwitchLabel.HorizontalAlignment = 'center';
            app.DeviationsfromSwitchLabel.Position = [5 147 92 22];
            app.DeviationsfromSwitchLabel.Text = 'Deviations from:';

            % Create DeviationsfromSwitch
            app.DeviationsfromSwitch = uiswitch(app.StrainsTab, 'slider');
            app.DeviationsfromSwitch.Items = {'Mean edge', 'Manual value'};
            app.DeviationsfromSwitch.Position = [169 147 45 20];
            app.DeviationsfromSwitch.Value = 'Mean edge';

            % Create ManualvaluefordeviationsEditFieldLabel
            app.ManualvaluefordeviationsEditFieldLabel = uilabel(app.StrainsTab);
            app.ManualvaluefordeviationsEditFieldLabel.HorizontalAlignment = 'right';
            app.ManualvaluefordeviationsEditFieldLabel.Position = [9 111 151 22];
            app.ManualvaluefordeviationsEditFieldLabel.Text = 'Manual value for deviations';

            % Create ManualvaluefordeviationsEditField
            app.ManualvaluefordeviationsEditField = uieditfield(app.StrainsTab, 'numeric');
            app.ManualvaluefordeviationsEditField.Limits = [1 10000];
            app.ManualvaluefordeviationsEditField.Position = [175 111 100 22];
            app.ManualvaluefordeviationsEditField.Value = 10;

            % Create ColorbarscaleSwitchLabel
            app.ColorbarscaleSwitchLabel = uilabel(app.StrainsTab);
            app.ColorbarscaleSwitchLabel.HorizontalAlignment = 'center';
            app.ColorbarscaleSwitchLabel.Position = [7 84 86 22];
            app.ColorbarscaleSwitchLabel.Text = 'Colorbar scale:';

            % Create ColorbarscaleSwitch
            app.ColorbarscaleSwitch = uiswitch(app.StrainsTab, 'slider');
            app.ColorbarscaleSwitch.Items = {'Percentage', 'Absolute'};
            app.ColorbarscaleSwitch.Position = [168 84 45 20];
            app.ColorbarscaleSwitch.Value = 'Percentage';

            % Create StrainsrectangulartriangularTab
            app.StrainsrectangulartriangularTab = uitab(app.TabGroup);
            app.StrainsrectangulartriangularTab.Title = 'Strains - rectangular & triangular';

            % Create UIAxes2_5
            app.UIAxes2_5 = uiaxes(app.StrainsrectangulartriangularTab);
            zlabel(app.UIAxes2_5, 'Z')
            app.UIAxes2_5.Position = [360 20 490 488];

            % Create TabGroup4
            app.TabGroup4 = uitabgroup(app.StrainsrectangulartriangularTab);
            app.TabGroup4.Position = [16 20 316 489];

            % Create StrainsrectangularTab
            app.StrainsrectangularTab = uitab(app.TabGroup4);
            app.StrainsrectangularTab.Title = 'Strains - rectangular';

            % Create ParticlescentersCheckBox
            app.ParticlescentersCheckBox = uicheckbox(app.StrainsrectangularTab);
            app.ParticlescentersCheckBox.Text = 'Particles'' centers';
            app.ParticlescentersCheckBox.Position = [13 427 113 22];
            app.ParticlescentersCheckBox.Value = true;

            % Create MaskscentersrectangularCheckBox
            app.MaskscentersrectangularCheckBox = uicheckbox(app.StrainsrectangularTab);
            app.MaskscentersrectangularCheckBox.Text = 'Masks'' centers - rectangular';
            app.MaskscentersrectangularCheckBox.Position = [13 399 172 22];
            app.MaskscentersrectangularCheckBox.Value = true;

            % Create PlotButton_2
            app.PlotButton_2 = uibutton(app.StrainsrectangularTab, 'push');
            app.PlotButton_2.ButtonPushedFcn = createCallbackFcn(app, @PlotButton_2Pushed, true);
            app.PlotButton_2.Position = [192 413 100 22];
            app.PlotButton_2.Text = 'Plot';

            % Create PlotassociationofparticleswithmaskscentersButton_2
            app.PlotassociationofparticleswithmaskscentersButton_2 = uibutton(app.StrainsrectangularTab, 'push');
            app.PlotassociationofparticleswithmaskscentersButton_2.ButtonPushedFcn = createCallbackFcn(app, @PlotassociationofparticleswithmaskscentersButton_2Pushed, true);
            app.PlotassociationofparticleswithmaskscentersButton_2.Position = [20 364 271 22];
            app.PlotassociationofparticleswithmaskscentersButton_2.Text = 'Plot association of particles with masks'' centers';

            % Create LongedgesdeviationsfrommeanCheckBox
            app.LongedgesdeviationsfrommeanCheckBox = uicheckbox(app.StrainsrectangularTab);
            app.LongedgesdeviationsfrommeanCheckBox.Text = 'Long edges - deviations from mean';
            app.LongedgesdeviationsfrommeanCheckBox.Position = [54 334 211 22];
            app.LongedgesdeviationsfrommeanCheckBox.Value = true;

            % Create ShortedgesdeviationsfrommeanCheckBox
            app.ShortedgesdeviationsfrommeanCheckBox = uicheckbox(app.StrainsrectangularTab);
            app.ShortedgesdeviationsfrommeanCheckBox.Text = 'Short edges - deviations from mean';
            app.ShortedgesdeviationsfrommeanCheckBox.Position = [55 309 213 22];
            app.ShortedgesdeviationsfrommeanCheckBox.Value = true;

            % Create RangeofcolorbarfordeviationsLabel
            app.RangeofcolorbarfordeviationsLabel = uilabel(app.StrainsrectangularTab);
            app.RangeofcolorbarfordeviationsLabel.FontWeight = 'bold';
            app.RangeofcolorbarfordeviationsLabel.FontAngle = 'italic';
            app.RangeofcolorbarfordeviationsLabel.Position = [66 280 191 22];
            app.RangeofcolorbarfordeviationsLabel.Text = 'Range of colorbar for deviations';

            % Create Switch_2
            app.Switch_2 = uiswitch(app.StrainsrectangularTab, 'slider');
            app.Switch_2.Items = {'Symmetric range', 'Min-Max'};
            app.Switch_2.Position = [159 256 45 20];
            app.Switch_2.Value = 'Symmetric range';

            % Create PlotdeviationsfrommeansButton
            app.PlotdeviationsfrommeansButton = uibutton(app.StrainsrectangularTab, 'push');
            app.PlotdeviationsfrommeansButton.ButtonPushedFcn = createCallbackFcn(app, @PlotdeviationsfrommeansButtonPushed, true);
            app.PlotdeviationsfrommeansButton.Position = [83 66 160 22];
            app.PlotdeviationsfrommeansButton.Text = 'Plot deviations from means';

            % Create OutliersscreeningLabel
            app.OutliersscreeningLabel = uilabel(app.StrainsrectangularTab);
            app.OutliersscreeningLabel.FontWeight = 'bold';
            app.OutliersscreeningLabel.FontAngle = 'italic';
            app.OutliersscreeningLabel.Position = [108 230 111 22];
            app.OutliersscreeningLabel.Text = 'Outliers screening';

            % Create MeanlengthsTextAreaLabel
            app.MeanlengthsTextAreaLabel = uilabel(app.StrainsrectangularTab);
            app.MeanlengthsTextAreaLabel.HorizontalAlignment = 'right';
            app.MeanlengthsTextAreaLabel.Position = [41 35 81 22];
            app.MeanlengthsTextAreaLabel.Text = 'Mean lengths:';

            % Create MeanlengthsTextArea
            app.MeanlengthsTextArea = uitextarea(app.StrainsrectangularTab);
            app.MeanlengthsTextArea.Position = [137 12 150 47];

            % Create StandarddeviationskeptfrommeanEditFieldLabel
            app.StandarddeviationskeptfrommeanEditFieldLabel = uilabel(app.StrainsrectangularTab);
            app.StandarddeviationskeptfrommeanEditFieldLabel.HorizontalAlignment = 'right';
            app.StandarddeviationskeptfrommeanEditFieldLabel.Position = [32 207 199 22];
            app.StandarddeviationskeptfrommeanEditFieldLabel.Text = 'Standard deviations kept from mean';

            % Create StandarddeviationskeptfrommeanEditField
            app.StandarddeviationskeptfrommeanEditField = uieditfield(app.StrainsrectangularTab, 'numeric');
            app.StandarddeviationskeptfrommeanEditField.Limits = [0 100];
            app.StandarddeviationskeptfrommeanEditField.Position = [250 207 34 22];
            app.StandarddeviationskeptfrommeanEditField.Value = 5;

            % Create DeviationsfromSwitchLabel_2
            app.DeviationsfromSwitchLabel_2 = uilabel(app.StrainsrectangularTab);
            app.DeviationsfromSwitchLabel_2.HorizontalAlignment = 'center';
            app.DeviationsfromSwitchLabel_2.Position = [14 183 92 22];
            app.DeviationsfromSwitchLabel_2.Text = 'Deviations from:';

            % Create DeviationsfromSwitch_2
            app.DeviationsfromSwitch_2 = uiswitch(app.StrainsrectangularTab, 'slider');
            app.DeviationsfromSwitch_2.Items = {'Mean edge', 'Manual value'};
            app.DeviationsfromSwitch_2.Position = [178 183 45 20];
            app.DeviationsfromSwitch_2.Value = 'Mean edge';

            % Create ManualvaluefordeviationslongEditFieldLabel
            app.ManualvaluefordeviationslongEditFieldLabel = uilabel(app.StrainsrectangularTab);
            app.ManualvaluefordeviationslongEditFieldLabel.HorizontalAlignment = 'right';
            app.ManualvaluefordeviationslongEditFieldLabel.Position = [19 154 185 22];
            app.ManualvaluefordeviationslongEditFieldLabel.Text = 'Manual value for deviations - long';

            % Create ManualvaluefordeviationslongEditField
            app.ManualvaluefordeviationslongEditField = uieditfield(app.StrainsrectangularTab, 'numeric');
            app.ManualvaluefordeviationslongEditField.Limits = [1 10000];
            app.ManualvaluefordeviationslongEditField.ValueChangedFcn = createCallbackFcn(app, @ManualvaluefordeviationslongEditFieldValueChanged, true);
            app.ManualvaluefordeviationslongEditField.Position = [223 154 61 22];
            app.ManualvaluefordeviationslongEditField.Value = 10;

            % Create ManualvaluefordeviationsshortEditFieldLabel
            app.ManualvaluefordeviationsshortEditFieldLabel = uilabel(app.StrainsrectangularTab);
            app.ManualvaluefordeviationsshortEditFieldLabel.HorizontalAlignment = 'right';
            app.ManualvaluefordeviationsshortEditFieldLabel.Position = [17 126 190 22];
            app.ManualvaluefordeviationsshortEditFieldLabel.Text = 'Manual value for deviations - short';

            % Create ManualvaluefordeviationsshortEditField
            app.ManualvaluefordeviationsshortEditField = uieditfield(app.StrainsrectangularTab, 'numeric');
            app.ManualvaluefordeviationsshortEditField.Limits = [1 10000];
            app.ManualvaluefordeviationsshortEditField.ValueChangedFcn = createCallbackFcn(app, @ManualvaluefordeviationsshortEditFieldValueChanged, true);
            app.ManualvaluefordeviationsshortEditField.Position = [222 126 61 22];
            app.ManualvaluefordeviationsshortEditField.Value = 10;

            % Create ColorbarscaleSwitch_2Label
            app.ColorbarscaleSwitch_2Label = uilabel(app.StrainsrectangularTab);
            app.ColorbarscaleSwitch_2Label.HorizontalAlignment = 'center';
            app.ColorbarscaleSwitch_2Label.Position = [31 95 86 22];
            app.ColorbarscaleSwitch_2Label.Text = 'Colorbar scale:';

            % Create ColorbarscaleSwitch_2
            app.ColorbarscaleSwitch_2 = uiswitch(app.StrainsrectangularTab, 'slider');
            app.ColorbarscaleSwitch_2.Items = {'Percentage', 'Absolute'};
            app.ColorbarscaleSwitch_2.Position = [192 95 45 20];
            app.ColorbarscaleSwitch_2.Value = 'Percentage';

            % Create StrainstriangularTab
            app.StrainstriangularTab = uitab(app.TabGroup4);
            app.StrainstriangularTab.Title = 'Strains - triangular';

            % Create ParticlescentersCheckBox_3
            app.ParticlescentersCheckBox_3 = uicheckbox(app.StrainstriangularTab);
            app.ParticlescentersCheckBox_3.Text = 'Particles'' centers';
            app.ParticlescentersCheckBox_3.Position = [13 427 113 22];
            app.ParticlescentersCheckBox_3.Value = true;

            % Create MaskscentersTriangularCheckBox
            app.MaskscentersTriangularCheckBox = uicheckbox(app.StrainstriangularTab);
            app.MaskscentersTriangularCheckBox.Text = 'Masks'' centers - Triangular';
            app.MaskscentersTriangularCheckBox.Position = [13 399 166 22];
            app.MaskscentersTriangularCheckBox.Value = true;

            % Create PlotassociationofparticleswithmaskscentersButton_3
            app.PlotassociationofparticleswithmaskscentersButton_3 = uibutton(app.StrainstriangularTab, 'push');
            app.PlotassociationofparticleswithmaskscentersButton_3.ButtonPushedFcn = createCallbackFcn(app, @PlotassociationofparticleswithmaskscentersButton_3Pushed, true);
            app.PlotassociationofparticleswithmaskscentersButton_3.Position = [20 364 271 22];
            app.PlotassociationofparticleswithmaskscentersButton_3.Text = 'Plot association of particles with masks'' centers';

            % Create RangeofcolorbarfordeviationsLabel_3
            app.RangeofcolorbarfordeviationsLabel_3 = uilabel(app.StrainstriangularTab);
            app.RangeofcolorbarfordeviationsLabel_3.FontWeight = 'bold';
            app.RangeofcolorbarfordeviationsLabel_3.FontAngle = 'italic';
            app.RangeofcolorbarfordeviationsLabel_3.Position = [66 336 191 22];
            app.RangeofcolorbarfordeviationsLabel_3.Text = 'Range of colorbar for deviations';

            % Create Switch_6
            app.Switch_6 = uiswitch(app.StrainstriangularTab, 'slider');
            app.Switch_6.Items = {'Symmetric range', 'Min-Max'};
            app.Switch_6.Position = [159 312 45 20];
            app.Switch_6.Value = 'Symmetric range';

            % Create PlotdeviationsfrommeansButton_3
            app.PlotdeviationsfrommeansButton_3 = uibutton(app.StrainstriangularTab, 'push');
            app.PlotdeviationsfrommeansButton_3.ButtonPushedFcn = createCallbackFcn(app, @PlotdeviationsfrommeansButton_3Pushed, true);
            app.PlotdeviationsfrommeansButton_3.Position = [87 93 160 22];
            app.PlotdeviationsfrommeansButton_3.Text = 'Plot deviations from means';

            % Create OutliersscreeningLabel_3
            app.OutliersscreeningLabel_3 = uilabel(app.StrainstriangularTab);
            app.OutliersscreeningLabel_3.FontWeight = 'bold';
            app.OutliersscreeningLabel_3.FontAngle = 'italic';
            app.OutliersscreeningLabel_3.Position = [108 276 111 22];
            app.OutliersscreeningLabel_3.Text = 'Outliers screening';

            % Create MeanlengthsTextArea_2Label
            app.MeanlengthsTextArea_2Label = uilabel(app.StrainstriangularTab);
            app.MeanlengthsTextArea_2Label.HorizontalAlignment = 'right';
            app.MeanlengthsTextArea_2Label.Position = [41 58 81 22];
            app.MeanlengthsTextArea_2Label.Text = 'Mean lengths:';

            % Create MeanlengthsTextArea_2
            app.MeanlengthsTextArea_2 = uitextarea(app.StrainstriangularTab);
            app.MeanlengthsTextArea_2.Position = [137 35 150 47];

            % Create StandarddeviationskeptfrommeanEditField_3Label
            app.StandarddeviationskeptfrommeanEditField_3Label = uilabel(app.StrainstriangularTab);
            app.StandarddeviationskeptfrommeanEditField_3Label.HorizontalAlignment = 'right';
            app.StandarddeviationskeptfrommeanEditField_3Label.Position = [32 253 199 22];
            app.StandarddeviationskeptfrommeanEditField_3Label.Text = 'Standard deviations kept from mean';

            % Create StandarddeviationskeptfrommeanEditField_3
            app.StandarddeviationskeptfrommeanEditField_3 = uieditfield(app.StrainstriangularTab, 'numeric');
            app.StandarddeviationskeptfrommeanEditField_3.Limits = [0 100];
            app.StandarddeviationskeptfrommeanEditField_3.Position = [250 253 34 22];
            app.StandarddeviationskeptfrommeanEditField_3.Value = 5;

            % Create PlotButton_3
            app.PlotButton_3 = uibutton(app.StrainstriangularTab, 'push');
            app.PlotButton_3.ButtonPushedFcn = createCallbackFcn(app, @PlotButton_3Pushed, true);
            app.PlotButton_3.Position = [192 413 100 22];
            app.PlotButton_3.Text = 'Plot';

            % Create DeviationsfromSwitchLabel_3
            app.DeviationsfromSwitchLabel_3 = uilabel(app.StrainstriangularTab);
            app.DeviationsfromSwitchLabel_3.HorizontalAlignment = 'center';
            app.DeviationsfromSwitchLabel_3.Position = [14 217 92 22];
            app.DeviationsfromSwitchLabel_3.Text = 'Deviations from:';

            % Create DeviationsfromSwitch_3
            app.DeviationsfromSwitch_3 = uiswitch(app.StrainstriangularTab, 'slider');
            app.DeviationsfromSwitch_3.Items = {'Mean edge', 'Manual value'};
            app.DeviationsfromSwitch_3.Position = [178 217 45 20];
            app.DeviationsfromSwitch_3.Value = 'Mean edge';

            % Create ManualvaluefordeviationsEditField_2Label
            app.ManualvaluefordeviationsEditField_2Label = uilabel(app.StrainstriangularTab);
            app.ManualvaluefordeviationsEditField_2Label.HorizontalAlignment = 'right';
            app.ManualvaluefordeviationsEditField_2Label.Position = [44 174 155 22];
            app.ManualvaluefordeviationsEditField_2Label.Text = 'Manual value for deviations ';

            % Create ManualvaluefordeviationsEditField_2
            app.ManualvaluefordeviationsEditField_2 = uieditfield(app.StrainstriangularTab, 'numeric');
            app.ManualvaluefordeviationsEditField_2.Limits = [1 10000];
            app.ManualvaluefordeviationsEditField_2.Position = [218 174 61 22];
            app.ManualvaluefordeviationsEditField_2.Value = 10;

            % Create ColorbarscaleSwitch_3Label
            app.ColorbarscaleSwitch_3Label = uilabel(app.StrainstriangularTab);
            app.ColorbarscaleSwitch_3Label.HorizontalAlignment = 'center';
            app.ColorbarscaleSwitch_3Label.Position = [28 130 86 22];
            app.ColorbarscaleSwitch_3Label.Text = 'Colorbar scale:';

            % Create ColorbarscaleSwitch_3
            app.ColorbarscaleSwitch_3 = uiswitch(app.StrainstriangularTab, 'slider');
            app.ColorbarscaleSwitch_3.Items = {'Percentage', 'Absolute'};
            app.ColorbarscaleSwitch_3.Position = [189 130 45 20];
            app.ColorbarscaleSwitch_3.Value = 'Percentage';

            % Create ExportingTab
            app.ExportingTab = uitab(app.TabGroup);
            app.ExportingTab.Title = 'Exporting';

            % Create VariablesPanel
            app.VariablesPanel = uipanel(app.ExportingTab);
            app.VariablesPanel.Title = 'Variables';
            app.VariablesPanel.Position = [57 85 367 430];

            % Create UnprocessedcroppedimageCheckBox
            app.UnprocessedcroppedimageCheckBox = uicheckbox(app.VariablesPanel);
            app.UnprocessedcroppedimageCheckBox.Text = 'Unprocessed cropped image ';
            app.UnprocessedcroppedimageCheckBox.Position = [8 384 179 22];

            % Create ProcessedimageCheckBox
            app.ProcessedimageCheckBox = uicheckbox(app.VariablesPanel);
            app.ProcessedimageCheckBox.Text = 'Processed image';
            app.ProcessedimageCheckBox.Position = [8 356 115 22];

            % Create DetectedparticlescentersradiiandmetricCheckBox
            app.DetectedparticlescentersradiiandmetricCheckBox = uicheckbox(app.VariablesPanel);
            app.DetectedparticlescentersradiiandmetricCheckBox.Text = 'Detected particles'' centers, radii and metric';
            app.DetectedparticlescentersradiiandmetricCheckBox.Position = [8 327 254 22];

            % Create DetectedmaskscoordinatesandmetricsortedtriangularCheckBox
            app.DetectedmaskscoordinatesandmetricsortedtriangularCheckBox = uicheckbox(app.VariablesPanel);
            app.DetectedmaskscoordinatesandmetricsortedtriangularCheckBox.Text = 'Detected masks'' coordinates and metric (sorted) - triangular';
            app.DetectedmaskscoordinatesandmetricsortedtriangularCheckBox.Position = [8 298 346 22];

            % Create DetectedmaskscoordinatesandmetricsortedrectangularCheckBox
            app.DetectedmaskscoordinatesandmetricsortedrectangularCheckBox = uicheckbox(app.VariablesPanel);
            app.DetectedmaskscoordinatesandmetricsortedrectangularCheckBox.Text = 'Detected masks'' coordinates and metric (sorted) - rectangular';
            app.DetectedmaskscoordinatesandmetricsortedrectangularCheckBox.Position = [8 201 356 22];

            % Create DetectedmaskscoordinatesandmetricsortedhexagonalCheckBox
            app.DetectedmaskscoordinatesandmetricsortedhexagonalCheckBox = uicheckbox(app.VariablesPanel);
            app.DetectedmaskscoordinatesandmetricsortedhexagonalCheckBox.Text = 'Detected masks'' coordinates and metric (sorted) - hexagonal';
            app.DetectedmaskscoordinatesandmetricsortedhexagonalCheckBox.Position = [8 106 351 22];

            % Create MaskparametestriangularCheckBox
            app.MaskparametestriangularCheckBox = uicheckbox(app.VariablesPanel);
            app.MaskparametestriangularCheckBox.Text = 'Mask parametes - triangular';
            app.MaskparametestriangularCheckBox.Position = [8 267 171 22];

            % Create MaskparametesrectangularCheckBox
            app.MaskparametesrectangularCheckBox = uicheckbox(app.VariablesPanel);
            app.MaskparametesrectangularCheckBox.Text = 'Mask parametes - rectangular';
            app.MaskparametesrectangularCheckBox.Position = [8 171 181 22];

            % Create MaskparameteshexagonalCheckBox
            app.MaskparameteshexagonalCheckBox = uicheckbox(app.VariablesPanel);
            app.MaskparameteshexagonalCheckBox.Text = 'Mask parametes - hexagonal';
            app.MaskparameteshexagonalCheckBox.Position = [8 73 177 22];

            % Create ParticlesindicesassociatedwithmaskstriangularCheckBox
            app.ParticlesindicesassociatedwithmaskstriangularCheckBox = uicheckbox(app.VariablesPanel);
            app.ParticlesindicesassociatedwithmaskstriangularCheckBox.Text = 'Particles'' indices associated with masks - triangular';
            app.ParticlesindicesassociatedwithmaskstriangularCheckBox.Position = [8 233 299 22];

            % Create ParticlesindicesassociatedwithmasksrectangularCheckBox
            app.ParticlesindicesassociatedwithmasksrectangularCheckBox = uicheckbox(app.VariablesPanel);
            app.ParticlesindicesassociatedwithmasksrectangularCheckBox.Text = 'Particles'' indices associated with masks - rectangular';
            app.ParticlesindicesassociatedwithmasksrectangularCheckBox.Position = [8 138 309 22];

            % Create ParticlesindicesassociatedwithmaskshexagonalCheckBox
            app.ParticlesindicesassociatedwithmaskshexagonalCheckBox = uicheckbox(app.VariablesPanel);
            app.ParticlesindicesassociatedwithmaskshexagonalCheckBox.Text = 'Particles'' indices associated with masks - hexagonal';
            app.ParticlesindicesassociatedwithmaskshexagonalCheckBox.Position = [8 40 305 22];

            % Create CrystalsegmentationmaskCheckBox
            app.CrystalsegmentationmaskCheckBox = uicheckbox(app.VariablesPanel);
            app.CrystalsegmentationmaskCheckBox.Text = 'Crystal segmentation mask';
            app.CrystalsegmentationmaskCheckBox.Position = [9 9 167 22];

            % Create ExportButton
            app.ExportButton = uibutton(app.ExportingTab, 'push');
            app.ExportButton.ButtonPushedFcn = createCallbackFcn(app, @ExportButtonPushed, true);
            app.ExportButton.Position = [173 52 100 22];
            app.ExportButton.Text = 'Export';

            % Create SaveProjectButton
            app.SaveProjectButton = uibutton(app.UIFigure, 'push');
            app.SaveProjectButton.ButtonPushedFcn = createCallbackFcn(app, @SaveProjectButtonPushed, true);
            app.SaveProjectButton.Position = [39 582 100 22];
            app.SaveProjectButton.Text = 'Save Project';

            % Create LoadProjectButton
            app.LoadProjectButton = uibutton(app.UIFigure, 'push');
            app.LoadProjectButton.ButtonPushedFcn = createCallbackFcn(app, @LoadProjectButtonPushed, true);
            app.LoadProjectButton.Position = [155 582 100 22];
            app.LoadProjectButton.Text = 'Load Project';

            % Create SaveimageButton
            app.SaveimageButton = uibutton(app.UIFigure, 'push');
            app.SaveimageButton.ButtonPushedFcn = createCallbackFcn(app, @SaveimageButtonPushed, true);
            app.SaveimageButton.Position = [570 582 100 22];
            app.SaveimageButton.Text = 'Save image';

            % Create ImagetosaveDropDownLabel
            app.ImagetosaveDropDownLabel = uilabel(app.UIFigure);
            app.ImagetosaveDropDownLabel.HorizontalAlignment = 'right';
            app.ImagetosaveDropDownLabel.Position = [333 582 81 22];
            app.ImagetosaveDropDownLabel.Text = 'Image to save';

            % Create ImagetosaveDropDown
            app.ImagetosaveDropDown = uidropdown(app.UIFigure);
            app.ImagetosaveDropDown.Items = {'Main right (layered)', 'Main center (proccessed)', 'Main left', 'Masks', 'Orientations analysis', 'Tessellation & strains - hexagonal', 'Strains - rectangular & triangular', 'App screen'};
            app.ImagetosaveDropDown.Position = [429 582 134 22];
            app.ImagetosaveDropDown.Value = 'Main right (layered)';

            % Create ReadyLamp
            app.ReadyLamp = uilamp(app.UIFigure);
            app.ReadyLamp.Interruptible = 'off';
            app.ReadyLamp.Position = [824 582 20 20];

            % Create ReadyLabel
            app.ReadyLabel = uilabel(app.UIFigure);
            app.ReadyLabel.Position = [774 582 40 22];
            app.ReadyLabel.Text = 'Ready';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = CrystalAnalysis_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
