.class public Ls1/g;
.super Ljava/lang/Object;
.source "SmsEventLoader.java"


# direct methods
.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "movie_info"

    return-object p0

    :pswitch_1
    const-string p0, "loan_info"

    return-object p0

    :pswitch_2
    const-string p0, "hotel_info"

    return-object p0

    :pswitch_3
    const-string p0, "gas_bill_info"

    return-object p0

    :pswitch_4
    const-string p0, "electricity_bill_info"

    return-object p0

    :cond_0
    const-string p0, "credit_info"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;JI)Lcom/android/calendar/common/event/schema/SmsEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/calendar/common/event/schema/SmsEvent;",
            ">(",
            "Landroid/content/Context;",
            "JI)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ls1/g;->a(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, p2, v0}, Ls1/d;->e(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "Cal:D:SmsEventLoader"

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, "loadData() epJson is null"

    .line 15
    .line 16
    invoke-static {v1, p0}, Lt1/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    :try_start_0
    const-string v2, "value"

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-string p0, "loadData(): epStr is empty"

    .line 33
    .line 34
    invoke-static {v1, p0}, Lt1/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    invoke-static {p3}, Ls1/g;->c(I)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    invoke-virtual {p3, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p0}, Lcom/android/calendar/common/event/schema/Event;->fillEpInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-object p3

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "loadData()"

    .line 53
    .line 54
    invoke-static {v1, p1, p0}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-object v0
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

.method private static c(I)Lcom/android/calendar/common/event/schema/SmsEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/calendar/common/event/schema/SmsEvent;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-instance p0, Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/MovieEvent;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_1
    new-instance p0, Lcom/android/calendar/common/event/schema/LoanEvent;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/LoanEvent;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    new-instance p0, Lcom/android/calendar/common/event/schema/HotelEvent;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/HotelEvent;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_3
    new-instance p0, Lcom/android/calendar/common/event/schema/GasBillEvent;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/GasBillEvent;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_4
    new-instance p0, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    new-instance p0, Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/CreditEvent;-><init>()V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
