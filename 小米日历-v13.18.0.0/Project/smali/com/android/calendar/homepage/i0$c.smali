.class final Lcom/android/calendar/homepage/i0$c;
.super Ljava/lang/Object;
.source "DayListLayout.kt"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/android/calendar/homepage/i0$c;",
        "Landroid/view/animation/Interpolator;",
        "",
        "t",
        "getInterpolation",
        "<init>",
        "(Lcom/android/calendar/homepage/i0;)V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/i0;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/i0$c;->a:Lcom/android/calendar/homepage/i0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    mul-float v1, p1, p1

    .line 5
    .line 6
    mul-float/2addr v1, p1

    .line 7
    mul-float/2addr v1, p1

    .line 8
    mul-float/2addr v1, p1

    .line 9
    const/4 p1, 0x1

    .line 10
    int-to-float p1, p1

    .line 11
    add-float/2addr v1, p1

    .line 12
    sub-float/2addr p1, v1

    .line 13
    iget-object v2, p0, Lcom/android/calendar/homepage/i0$c;->a:Lcom/android/calendar/homepage/i0;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/android/calendar/homepage/i0;->C(Lcom/android/calendar/homepage/i0;)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    mul-float/2addr p1, v2

    .line 20
    cmpg-float p1, p1, v0

    .line 21
    .line 22
    if-gez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/calendar/homepage/i0$c;->a:Lcom/android/calendar/homepage/i0;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/calendar/homepage/i0;->B(Lcom/android/calendar/homepage/i0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return v1
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
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
