.class Lcom/android/calendar/homepage/AllInOneActivity$d;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Lcom/miui/calendar/util/z0$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/AllInOneActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$d;->a:Lcom/android/calendar/homepage/AllInOneActivity;

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
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$d;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 2
    .line 3
    const v1, 0x7f0a06c1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$d;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity;->D0(Lcom/android/calendar/homepage/AllInOneActivity;)Lcom/android/calendar/homepage/AllInOneActivity$h;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/android/calendar/homepage/AllInOneActivity$h;->K:Lcom/miui/calendar/view/MonthMotionContainer;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/miui/calendar/view/MonthMotionContainer;->C()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$d;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity;->G0(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 31
    .line 32
    .line 33
    return-void
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

.method public b(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$d;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/m;->finish()V

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
