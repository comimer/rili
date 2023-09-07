.class public Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "CircEaseInOutInterpolater.java"

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
    .locals 5

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    cmpg-float v2, p1, v1

    .line 7
    .line 8
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    const/high16 v0, -0x41000000    # -0.5f

    .line 13
    .line 14
    mul-float/2addr p1, p1

    .line 15
    sub-float/2addr v1, p1

    .line 16
    float-to-double v1, v1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    sub-double/2addr v1, v3

    .line 22
    double-to-float p1, v1

    .line 23
    mul-float/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 26
    .line 27
    sub-float/2addr p1, v0

    .line 28
    mul-float/2addr p1, p1

    .line 29
    sub-float/2addr v1, p1

    .line 30
    float-to-double v0, v1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    add-double/2addr v0, v3

    .line 36
    double-to-float p1, v0

    .line 37
    mul-float/2addr p1, v2

    .line 38
    return p1
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method
