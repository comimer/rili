.class Lcom/miui/calendar/shift/ShiftSettingsActivity$h;
.super Ljava/lang/Object;
.source "ShiftSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$h;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$h;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->f0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$h;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->Y(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$h;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->f0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p1, Lcom/miui/calendar/shift/ShiftSchema;->interval:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$h;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->g0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$h;->a:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->a0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)V

    .line 35
    .line 36
    .line 37
    :cond_0
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
.end method
