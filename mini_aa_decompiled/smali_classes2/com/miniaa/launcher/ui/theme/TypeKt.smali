.class public final Lcom/miniaa/launcher/ui/theme/TypeKt;
.super Ljava/lang/Object;
.source "Type.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "GoogleSansFamily",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "getGoogleSansFamily",
        "()Landroidx/compose/ui/text/font/FontFamily;",
        "MiniAATypography",
        "Landroidx/compose/material3/Typography;",
        "getMiniAATypography",
        "()Landroidx/compose/material3/Typography;",
        "app_systemRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final GoogleSansFamily:Landroidx/compose/ui/text/font/FontFamily;

.field private static final MiniAATypography:Landroidx/compose/material3/Typography;


# direct methods
.method static constructor <clinit>()V
    .locals 309

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Landroidx/compose/ui/text/font/Font;

    sget v1, Lcom/miniaa/launcher/R$font;->google_sans_regular:I

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 13
    sget v3, Lcom/miniaa/launcher/R$font;->google_sans_medium:I

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 14
    sget v3, Lcom/miniaa/launcher/R$font;->google_sans_semibold:I

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getSemiBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 15
    sget v3, Lcom/miniaa/launcher/R$font;->google_sans_bold:I

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/text/font/FontKt;->Font-YpTlLL0$default(ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/Font;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontFamilyKt;->FontFamily([Landroidx/compose/ui/text/font/Font;)Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v0

    move-object/16 v267, v0

    move-object/from16 v235, v0

    move-object/from16 v203, v0

    move-object/from16 v171, v0

    move-object/from16 v139, v0

    move-object/from16 v107, v0

    move-object/from16 v75, v0

    move-object/from16 v43, v0

    move-object v11, v0

    sput-object v0, Lcom/miniaa/launcher/ui/theme/TypeKt;->GoogleSansFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 18
    new-instance v0, Landroidx/compose/material3/Typography;

    move-object/16 v291, v0

    .line 21
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v8

    const/16 v1, 0x22

    .line 22
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v6

    const/16 v2, 0x28

    .line 23
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v25

    .line 19
    new-instance v3, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v292, v3

    const v33, 0xfdffd9

    const/16 v34, 0x0

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v3 .. v34}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v40

    const/16 v2, 0x1c

    .line 28
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v38

    .line 29
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v57

    .line 25
    new-instance v35, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v295, v35

    const v65, 0xfdffd9

    const/16 v66, 0x0

    const-wide/16 v36, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-direct/range {v35 .. v66}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getSemiBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v72

    const/16 v1, 0x18

    .line 34
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v70

    const/16 v2, 0x1e

    .line 35
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v89

    .line 31
    new-instance v67, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v296, v67

    const v97, 0xfdffd9

    const/16 v98, 0x0

    const-wide/16 v68, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const-wide/16 v82, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    invoke-direct/range {v67 .. v98}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getSemiBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v104

    const/16 v2, 0x14

    .line 40
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v102

    const/16 v3, 0x1a

    .line 41
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v121

    .line 37
    new-instance v99, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v298, v99

    const v129, 0xfdffd9

    const/16 v130, 0x0

    const-wide/16 v100, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v108, 0x0

    const-wide/16 v109, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const-wide/16 v114, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    invoke-direct/range {v99 .. v130}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v136

    const/16 v3, 0x12

    .line 46
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v134

    .line 47
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v153

    .line 43
    new-instance v131, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v299, v131

    const v161, 0xfdffd9

    const/16 v162, 0x0

    const-wide/16 v132, 0x0

    const/16 v137, 0x0

    const/16 v138, 0x0

    const/16 v140, 0x0

    const-wide/16 v141, 0x0

    const/16 v143, 0x0

    const/16 v144, 0x0

    const/16 v145, 0x0

    const-wide/16 v146, 0x0

    const/16 v148, 0x0

    const/16 v149, 0x0

    const/16 v150, 0x0

    const/16 v151, 0x0

    const/16 v152, 0x0

    const/16 v155, 0x0

    const/16 v156, 0x0

    const/16 v157, 0x0

    const/16 v158, 0x0

    const/16 v159, 0x0

    const/16 v160, 0x0

    invoke-direct/range {v131 .. v162}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v168

    const/16 v1, 0x10

    .line 52
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v166

    const/16 v3, 0x16

    .line 53
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v185

    .line 49
    new-instance v163, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v301, v163

    const v193, 0xfdffd9

    const/16 v194, 0x0

    const-wide/16 v164, 0x0

    const/16 v169, 0x0

    const/16 v170, 0x0

    const/16 v172, 0x0

    const-wide/16 v173, 0x0

    const/16 v175, 0x0

    const/16 v176, 0x0

    const/16 v177, 0x0

    const-wide/16 v178, 0x0

    const/16 v180, 0x0

    const/16 v181, 0x0

    const/16 v182, 0x0

    const/16 v183, 0x0

    const/16 v184, 0x0

    const/16 v187, 0x0

    const/16 v188, 0x0

    const/16 v189, 0x0

    const/16 v190, 0x0

    const/16 v191, 0x0

    const/16 v192, 0x0

    invoke-direct/range {v163 .. v194}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v200

    const/16 v3, 0xe

    .line 58
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v198

    .line 59
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v217

    .line 55
    new-instance v195, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v302, v195

    const v225, 0xfdffd9

    const/16 v226, 0x0

    const-wide/16 v196, 0x0

    const/16 v201, 0x0

    const/16 v202, 0x0

    const/16 v204, 0x0

    const-wide/16 v205, 0x0

    const/16 v207, 0x0

    const/16 v208, 0x0

    const/16 v209, 0x0

    const-wide/16 v210, 0x0

    const/16 v212, 0x0

    const/16 v213, 0x0

    const/16 v214, 0x0

    const/16 v215, 0x0

    const/16 v216, 0x0

    const/16 v219, 0x0

    const/16 v220, 0x0

    const/16 v221, 0x0

    const/16 v222, 0x0

    const/16 v223, 0x0

    const/16 v224, 0x0

    invoke-direct/range {v195 .. v226}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v232

    .line 64
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v230

    .line 65
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v249

    .line 61
    new-instance v227, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v304, v227

    const v2, 0xfdffd9

    move/16 v257, v2

    const/4 v2, 0x0

    move-object/16 v258, v2

    const-wide/16 v228, 0x0

    const/16 v233, 0x0

    const/16 v234, 0x0

    const/16 v236, 0x0

    const-wide/16 v237, 0x0

    const/16 v239, 0x0

    const/16 v240, 0x0

    const/16 v241, 0x0

    const-wide/16 v242, 0x0

    const/16 v244, 0x0

    const/16 v245, 0x0

    const/16 v246, 0x0

    const/16 v247, 0x0

    const/16 v248, 0x0

    const/16 v251, 0x0

    const/16 v252, 0x0

    const/16 v253, 0x0

    const/16 v254, 0x0

    const/16 v255, 0x0

    move-object/16 v256, v2

    invoke-direct/range {v227 .. v258}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    move-object/16 v264, v2

    const/16 v2, 0xc

    .line 70
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v2

    move-wide/16 v262, v2

    .line 71
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v1

    move-wide/16 v281, v1

    .line 67
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v305, v1

    move-object/16 v259, v1

    const v1, 0xfdffd9

    move/16 v289, v1

    const/4 v1, 0x0

    move-object/16 v290, v1

    const-wide/16 v1, 0x0

    move-wide/16 v260, v1

    const/4 v1, 0x0

    move-object/16 v265, v1

    move-object/16 v266, v1

    move-object/16 v268, v1

    const-wide/16 v1, 0x0

    move-wide/16 v269, v1

    const/4 v1, 0x0

    move-object/16 v271, v1

    move-object/16 v272, v1

    move-object/16 v273, v1

    const-wide/16 v1, 0x0

    move-wide/16 v274, v1

    const/4 v1, 0x0

    move-object/16 v276, v1

    move-object/16 v277, v1

    move-object/16 v278, v1

    const/4 v1, 0x0

    move/16 v279, v1

    move/16 v280, v1

    const/4 v1, 0x0

    move-object/16 v283, v1

    move-object/16 v284, v1

    move-object/16 v285, v1

    const/4 v1, 0x0

    move/16 v286, v1

    move/16 v287, v1

    const/4 v1, 0x0

    move-object/16 v288, v1

    invoke-direct/range {v259 .. v290}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v1, 0x4926

    move/16 v307, v1

    const/4 v1, 0x0

    move-object/16 v308, v1

    move-object/16 v293, v1

    move-object/16 v294, v1

    move-object/16 v297, v1

    move-object/16 v300, v1

    move-object/16 v303, v1

    move-object/16 v306, v1

    .line 18
    invoke-direct/range {v291 .. v308}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miniaa/launcher/ui/theme/TypeKt;->MiniAATypography:Landroidx/compose/material3/Typography;

    return-void
.end method

.method public static final getGoogleSansFamily()Landroidx/compose/ui/text/font/FontFamily;
    .locals 1

    .line 11
    sget-object v0, Lcom/miniaa/launcher/ui/theme/TypeKt;->GoogleSansFamily:Landroidx/compose/ui/text/font/FontFamily;

    return-object v0
.end method

.method public static final getMiniAATypography()Landroidx/compose/material3/Typography;
    .locals 1

    .line 18
    sget-object v0, Lcom/miniaa/launcher/ui/theme/TypeKt;->MiniAATypography:Landroidx/compose/material3/Typography;

    return-object v0
.end method
