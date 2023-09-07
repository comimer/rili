.class public Lcom/android/calendar/homepage/g0;
.super Lcom/android/calendar/homepage/c0;
.source "DayInWeekView.java"


# instance fields
.field private F0:Z

.field private G0:Ljava/lang/String;

.field private H0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/calendar/homepage/c0$k;",
            ">;>;"
        }
    .end annotation
.end field

.field private I0:Lcom/android/calendar/homepage/c0$k;


# direct methods
.method private l0()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/c0;->setSelectedDay(Ljava/util/Calendar;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/c0;->setWeekFirstDay(Ljava/util/Calendar;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/c0;->setFocusDay(Ljava/util/Calendar;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->s(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/miui/calendar/util/e0;->n(Landroid/content/Context;Ljava/util/Calendar;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/calendar/homepage/c0;->setWeekNum(I)V

    .line 39
    .line 40
    .line 41
    return-void
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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method


# virtual methods
.method protected V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Y()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/homepage/g0;->l0()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/android/calendar/homepage/c0;->Y()V

    .line 5
    .line 6
    .line 7
    return-void
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

.method protected c0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/calendar/homepage/c0;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/homepage/g0;->I0:Lcom/android/calendar/homepage/c0$k;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/c0$k;->b(Lcom/android/calendar/homepage/c0$j;)V

    .line 8
    .line 9
    .line 10
    return-void
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

.method protected getDrawCenterYOffset()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPaintInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/calendar/homepage/c0$k;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/homepage/g0;->F0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/homepage/g0;->H0:Ljava/util/List;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/homepage/c0;->getPaintInfos()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
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

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/c0;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/util/x0;->j0(Landroid/content/Context;)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    float-to-int p1, p1

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 9
    .line 10
    .line 11
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
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
.end method

.method public setShowToday(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/homepage/g0;->F0:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

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

.method public setTodayText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/g0;->G0:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
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
