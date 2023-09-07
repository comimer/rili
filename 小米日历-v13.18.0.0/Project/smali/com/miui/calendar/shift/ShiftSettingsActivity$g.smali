.class Lcom/miui/calendar/shift/ShiftSettingsActivity$g;
.super Ljava/lang/Object;
.source "ShiftSettingsActivity.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/shift/ShiftSettingsActivity;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/shift/ShiftSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/shift/ShiftSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$g;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

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
.method public onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$g;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->e0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Landroid/app/Dialog;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$g;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->e0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Landroid/app/Dialog;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object p3, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$g;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 16
    .line 17
    const v0, 0x7f120584

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aput-object p1, v1, v2

    .line 33
    .line 34
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_0
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method
