.class Lcom/android/calendar/homepage/AllInOneActivity$b;
.super Ljava/lang/Object;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/AllInOneActivity;->P0()V
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
    iput-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$b;->a:Lcom/android/calendar/homepage/AllInOneActivity;

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
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "2.0"

    .line 2
    .line 3
    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lmiuix/view/f;->A:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v0, Lmiuix/view/f;->k:I

    .line 16
    .line 17
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lcom/android/calendar/homepage/AllInOneActivity$b;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/calendar/homepage/AllInOneActivity;->C0(Lcom/android/calendar/homepage/AllInOneActivity;)Lcom/android/calendar/homepage/t0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/android/calendar/homepage/t0;->I()V

    .line 27
    .line 28
    .line 29
    const-string p1, "click_switch_tab_button"

    .line 30
    .line 31
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
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
