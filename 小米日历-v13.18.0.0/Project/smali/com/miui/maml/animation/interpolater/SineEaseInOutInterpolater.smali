.class public Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "SineEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    sub-double/2addr v0, v2

    .line 15
    double-to-float p1, v0

    .line 16
    const/high16 v0, -0x41000000    # -0.5f

    .line 17
    .line 18
    mul-float/2addr p1, v0

    .line 19
    return p1
    .line 20
    .line 21
    .line 22
.end method
