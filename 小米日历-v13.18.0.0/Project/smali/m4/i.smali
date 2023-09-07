.class public Lm4/i;
.super Ljava/lang/Object;
.source "SmsModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)Lm4/h;
    .locals 2

    .line 1
    sget-object v0, Lm4/i$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/miui/calendar/sms/SmartMessage;->getOntologyType()Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string p1, "Cal:D:SmsModelFactory"

    .line 17
    .line 18
    const-string p2, "build(): unknown sms type"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :pswitch_0
    new-instance v0, Lm4/f;

    .line 26
    .line 27
    invoke-direct {v0, p1, p2, p3}, Lm4/f;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 p2, 0x10

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    new-instance v0, Lm4/e;

    .line 34
    .line 35
    invoke-direct {v0, p1, p2, p3}, Lm4/e;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 p2, 0xf

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    new-instance v0, Lm4/d;

    .line 42
    .line 43
    invoke-direct {v0, p1, p2, p3}, Lm4/d;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/16 p2, 0xe

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_3
    new-instance v0, Lm4/b;

    .line 50
    .line 51
    invoke-direct {v0, p1, p2, p3}, Lm4/b;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 p2, 0xd

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_4
    new-instance v0, Lm4/g;

    .line 58
    .line 59
    invoke-direct {v0, p1, p2, p3}, Lm4/g;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/16 p2, 0x11

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_5
    new-instance v0, Lm4/j;

    .line 66
    .line 67
    invoke-direct {v0, p1, p2, p3}, Lm4/j;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/16 p2, 0xc

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_6
    new-instance v0, Lm4/c;

    .line 74
    .line 75
    invoke-direct {v0, p1, p2, p3}, Lm4/c;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/16 p2, 0xb

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_7
    new-instance v0, Lm4/a;

    .line 82
    .line 83
    invoke-direct {v0, p1, p2, p3}, Lm4/a;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 p2, 0x3

    .line 87
    :goto_0
    invoke-static {p1, p2}, Lcom/android/calendar/settings/j;->p(Landroid/content/Context;I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {v0, p1}, Lm4/h;->g(Z)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public b(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lm4/i;->a(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)Lm4/h;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p2}, Lcom/miui/calendar/sms/SmartMessage;->getCardID()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Lcom/miui/calendar/sms/SmartMessage;->getOntologyType()Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->UNKNOWN:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "card_id"

    .line 31
    .line 32
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/miui/calendar/sms/SmartMessage;->getOntologyType()Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "ontology_type"

    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const-string v0, "sms_received"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    if-eqz p3, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/miui/calendar/sms/SmartMessage;->getOntologyType()Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p1, p2}, Lcom/android/calendar/settings/j;->a(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage$OntologyType;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p3}, Lm4/h;->c()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p3}, Lm4/h;->b()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p3}, Lm4/h;->f()Z

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
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
