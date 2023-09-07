.class Lcom/android/calendar/homepage/AllInOneActivity$a;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/AllInOneActivity;
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
    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$a;->a:Lcom/android/calendar/homepage/AllInOneActivity;

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
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$a;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/AllInOneActivity;->p0(Lcom/android/calendar/homepage/AllInOneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$a;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity;->q0(Lcom/android/calendar/homepage/AllInOneActivity;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/miui/calendar/util/g$o;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/miui/calendar/util/g$o;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/homepage/AllInOneActivity$a;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity;->A0(Lcom/android/calendar/homepage/AllInOneActivity;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/calendar/homepage/AllInOneActivity$a;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/calendar/homepage/AllInOneActivity;->B0(Lcom/android/calendar/homepage/AllInOneActivity;)Ljava/lang/Runnable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/android/calendar/homepage/AllInOneActivity$a;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/android/calendar/homepage/AllInOneActivity;->o0(Lcom/android/calendar/homepage/AllInOneActivity;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v1, v2}, Lcom/android/calendar/common/Utils;->Z0(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
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
