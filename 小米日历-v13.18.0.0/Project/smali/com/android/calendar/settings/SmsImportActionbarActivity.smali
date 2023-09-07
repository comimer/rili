.class public Lcom/android/calendar/settings/SmsImportActionbarActivity;
.super Lcom/android/calendar/common/b;
.source "SmsImportActionbarActivity.java"


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

.method public static Y(Lcom/miui/calendar/sms/SmartMessage$OntologyType;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/calendar/settings/SmsImportActionbarActivity$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    const-string p0, "preferences_loan"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_1
    const-string p0, "preferences_hotel"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_2
    const-string p0, "preferences_gas_bill"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_3
    const-string p0, "preferences_electricity_bill"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_4
    const-string p0, "preferences_movie"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_5
    const-string p0, "preferences_travel"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_6
    const-string p0, "preferences_credit_repayment"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method private Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/calendar/settings/k;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/android/calendar/settings/k;-><init>()V

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0a03b4

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/s;->q(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/s;->i()I

    .line 22
    .line 23
    .line 24
    return-void
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
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d005e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/settings/SmsImportActionbarActivity;->Z()V

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
