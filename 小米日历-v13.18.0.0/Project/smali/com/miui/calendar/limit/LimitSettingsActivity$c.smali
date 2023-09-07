.class Lcom/miui/calendar/limit/LimitSettingsActivity$c;
.super Ljava/lang/Object;
.source "LimitSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/limit/LimitSettingsActivity;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/limit/LimitSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/limit/LimitSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/limit/LimitSettingsActivity$c;->a:Lcom/miui/calendar/limit/LimitSettingsActivity;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/limit/LimitSettingsActivity$c;->a:Lcom/miui/calendar/limit/LimitSettingsActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/limit/LimitSettingsActivity;->Z(Lcom/miui/calendar/limit/LimitSettingsActivity;)Lmiuix/appcompat/widget/Spinner;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/limit/LimitSettingsActivity$c;->a:Lcom/miui/calendar/limit/LimitSettingsActivity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/miui/calendar/limit/LimitSettingsActivity;->Z(Lcom/miui/calendar/limit/LimitSettingsActivity;)Lmiuix/appcompat/widget/Spinner;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    .line 21
    .line 22
    .line 23
    return-void
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
