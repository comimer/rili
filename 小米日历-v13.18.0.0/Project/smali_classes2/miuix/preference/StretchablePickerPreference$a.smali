.class Lmiuix/preference/StretchablePickerPreference$a;
.super Ljava/lang/Object;
.source "StretchablePickerPreference.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/StretchablePickerPreference;->m1(Lmiuix/pickerwidget/widget/DateTimePicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/preference/StretchablePickerPreference;


# direct methods
.method constructor <init>(Lmiuix/preference/StretchablePickerPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference$a;->a:Lmiuix/preference/StretchablePickerPreference;

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
.end method


# virtual methods
.method public onDateTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$a;->a:Lmiuix/preference/StretchablePickerPreference;

    .line 2
    .line 3
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->W0(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/pickerwidget/date/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$a;->a:Lmiuix/preference/StretchablePickerPreference;

    .line 11
    .line 12
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->X0(Lmiuix/preference/StretchablePickerPreference;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v0, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->Z0(Lmiuix/preference/StretchablePickerPreference;ZJ)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$a;->a:Lmiuix/preference/StretchablePickerPreference;

    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference;->b1(Lmiuix/preference/StretchablePickerPreference;J)J

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$a;->a:Lmiuix/preference/StretchablePickerPreference;

    .line 25
    .line 26
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->c1(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/preference/StretchablePickerPreference$c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$a;->a:Lmiuix/preference/StretchablePickerPreference;

    .line 33
    .line 34
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->c1(Lmiuix/preference/StretchablePickerPreference;)Lmiuix/preference/StretchablePickerPreference$c;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lmiuix/preference/StretchablePickerPreference$a;->a:Lmiuix/preference/StretchablePickerPreference;

    .line 39
    .line 40
    invoke-static {p2}, Lmiuix/preference/StretchablePickerPreference;->a1(Lmiuix/preference/StretchablePickerPreference;)J

    .line 41
    .line 42
    .line 43
    move-result-wide p2

    .line 44
    invoke-interface {p1, p2, p3}, Lmiuix/preference/StretchablePickerPreference$c;->a(J)J

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$a;->a:Lmiuix/preference/StretchablePickerPreference;

    .line 48
    .line 49
    invoke-static {p1}, Lmiuix/preference/StretchablePickerPreference;->d1(Lmiuix/preference/StretchablePickerPreference;)V

    .line 50
    .line 51
    .line 52
    return-void
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
.end method
