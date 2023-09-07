.class public Lcom/miui/calendar/repeats/CustomRepeatActivity;
.super Lcom/android/calendar/common/b;
.source "CustomRepeatActivity.java"


# instance fields
.field private b:Lcom/miui/calendar/repeats/a;

.field private c:Lcom/miui/calendar/repeats/RepeatSchema;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0072

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/miui/calendar/repeats/a;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/miui/calendar/repeats/a;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/miui/calendar/repeats/CustomRepeatActivity;->b:Lcom/miui/calendar/repeats/a;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/miui/calendar/repeats/CustomRepeatActivity;->b:Lcom/miui/calendar/repeats/a;

    .line 26
    .line 27
    const v1, 0x7f0a019f

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/s;->q(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/s;->h()I

    .line 35
    .line 36
    .line 37
    return-void
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

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/repeats/CustomRepeatActivity;->c:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/g$v;->h(Lcom/miui/calendar/repeats/RepeatSchema;)Lcom/miui/calendar/util/g$j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
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

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/calendar/repeats/CustomRepeatActivity;->b:Lcom/miui/calendar/repeats/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/miui/calendar/repeats/a;->N()Lcom/miui/calendar/repeats/RepeatSchema;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/calendar/repeats/CustomRepeatActivity;->c:Lcom/miui/calendar/repeats/RepeatSchema;

    .line 13
    .line 14
    :cond_0
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/calendar/common/b;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
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
