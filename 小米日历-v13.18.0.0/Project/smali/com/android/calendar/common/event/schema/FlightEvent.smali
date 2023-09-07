.class public Lcom/android/calendar/common/event/schema/FlightEvent;
.super Lcom/android/calendar/common/event/schema/TravelEvent;
.source "FlightEvent.java"


# static fields
.field private static final JSON_KEY_ARR_AIRPORT:Ljava/lang/String; = "arr_airport"

.field private static final JSON_KEY_CIPHER_TEXTS:[Ljava/lang/String;

.field private static final JSON_KEY_DEP_AIRPORT:Ljava/lang/String; = "dep_airport"

.field private static final JSON_KEY_FLIGHT_COMPANY:Ljava/lang/String; = "flight_company"

.field private static final JSON_KEY_FLIGHT_NUM:Ljava/lang/String; = "flight_num"

.field private static final JSON_KEY_PASSENGERS:[Ljava/lang/String;

.field private static final JSON_KEY_SEAT_NO:[Ljava/lang/String;

.field private static final JSON_KEY_STATUS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cal:D:FlightEvent"


# instance fields
.field protected mArrAirport:Ljava/lang/String;

.field protected mArrTerminal:Ljava/lang/String;

.field protected mDepAirport:Ljava/lang/String;

.field protected mDepTerminal:Ljava/lang/String;

.field protected mFlightCompany:Ljava/lang/String;

.field protected mFlightNum:Ljava/lang/String;

.field protected mFlightSchema:Lcom/android/calendar/common/event/schema/FlightSchema;

.field protected mPassengers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/FlightPassenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "passenger"

    .line 2
    .line 3
    const-string v1, "passenger_1"

    .line 4
    .line 5
    const-string v2, "passenger_2"

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/calendar/common/event/schema/FlightEvent;->JSON_KEY_PASSENGERS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "cipher_text"

    .line 14
    .line 15
    const-string v1, "cipher_text_1"

    .line 16
    .line 17
    const-string v2, "cipher_text_2"

    .line 18
    .line 19
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/calendar/common/event/schema/FlightEvent;->JSON_KEY_CIPHER_TEXTS:[Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "seat_no"

    .line 26
    .line 27
    const-string v1, "seat_no_1"

    .line 28
    .line 29
    const-string v2, "seat_no_2"

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/calendar/common/event/schema/FlightEvent;->JSON_KEY_SEAT_NO:[Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "status"

    .line 38
    .line 39
    const-string v1, "status_1"

    .line 40
    .line 41
    const-string v2, "status_2"

    .line 42
    .line 43
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/calendar/common/event/schema/FlightEvent;->JSON_KEY_STATUS:[Ljava/lang/String;

    .line 48
    .line 49
    return-void
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

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/event/schema/TravelEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mPassengers:Ljava/util/List;

    .line 10
    .line 11
    return-void
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
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    instance-of v1, p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mDepDate:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mDepTime:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mDepCity:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepCity()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightNum:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mDepAirport:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getDepAirport()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    :cond_0
    return v0
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public fillEpInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    const-class p1, Lcom/android/calendar/common/event/schema/FlightSchema;

    invoke-static {p2, p1}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 5
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/common/event/schema/FlightEvent;->fillEpInfo(Lorg/json/JSONObject;Lcom/android/calendar/common/event/schema/FlightSchema;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Cal:D:FlightEvent"

    const-string v0, "fillEpInfo(): "

    .line 6
    invoke-static {p2, v0, p1}, Lt1/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public fillEpInfo(Lorg/json/JSONObject;Lcom/android/calendar/common/event/schema/FlightSchema;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/calendar/common/event/schema/FlightEvent;->fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/FlightSchema;->adjustFlightSchema()V

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/calendar/common/event/schema/FlightEvent;->fillFlightInfo(Lcom/android/calendar/common/event/schema/FlightSchema;)V

    :cond_0
    return-void
.end method

.method public fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->fillEpInfoFromJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "flight_num"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightNum:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "flight_company"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightCompany:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "dep_airport"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mDepAirport:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "arr_airport"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mArrAirport:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    sget-object v1, Lcom/android/calendar/common/event/schema/FlightEvent;->JSON_KEY_PASSENGERS:[Ljava/lang/String;

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    if-ge v0, v2, :cond_1

    .line 41
    .line 42
    aget-object v1, v1, v0

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    new-instance v2, Lcom/android/calendar/common/event/schema/FlightPassenger;

    .line 55
    .line 56
    invoke-direct {v2}, Lcom/android/calendar/common/event/schema/FlightPassenger;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/FlightPassenger;->setName(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/android/calendar/common/event/schema/FlightEvent;->JSON_KEY_CIPHER_TEXTS:[Ljava/lang/String;

    .line 63
    .line 64
    aget-object v1, v1, v0

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/FlightPassenger;->setCipherText(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lcom/android/calendar/common/event/schema/FlightEvent;->JSON_KEY_SEAT_NO:[Ljava/lang/String;

    .line 74
    .line 75
    aget-object v1, v1, v0

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/FlightPassenger;->setSeatNo(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lcom/android/calendar/common/event/schema/FlightEvent;->JSON_KEY_STATUS:[Ljava/lang/String;

    .line 85
    .line 86
    aget-object v1, v1, v0

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/FlightPassenger;->setStatus(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mPassengers:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    return-void
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public fillFlightInfo(Lcom/android/calendar/common/event/schema/FlightSchema;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightSchema:Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightNo:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightNum:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightCompany:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightCompany:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDeptimePlanDate:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    aget-object v0, v0, v2

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mDepDate:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDeptimePlanDate:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v3, 0x1

    .line 31
    aget-object v0, v0, v3

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mDepTime:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDep:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mDepCity:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mDepAirport:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightHTerminal:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mDepTerminal:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrtimePlanDate:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    aget-object v0, v0, v2

    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mArrDate:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrtimePlanDate:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    aget-object v0, v0, v3

    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mArrTime:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArr:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/TravelEvent;->mArrCity:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v0, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mArrAirport:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/calendar/common/event/schema/FlightSchema;->FlightTerminal:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mArrTerminal:Ljava/lang/String;

    .line 78
    .line 79
    return-void
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method protected fillJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->fillJSONObject(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/common/event/schema/FlightEvent;->fillEpInfo(Lorg/json/JSONObject;Lcom/android/calendar/common/event/schema/FlightSchema;)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method public getArrAirport()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mArrAirport:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getArrTerminal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mArrTerminal:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getDepAirport()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mDepAirport:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getDepTerminal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mDepTerminal:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getEventType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getFlightCompany()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightCompany:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getFlightNum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightNum:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getFlightSchema()Lcom/android/calendar/common/event/schema/FlightSchema;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightSchema:Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public getPassengers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/FlightPassenger;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mPassengers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public setArrAirport(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mArrAirport:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public setArrTerminal(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mArrTerminal:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public setDepAirport(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mDepAirport:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public setDepTerminal(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mDepTerminal:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public setFlightCompany(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightCompany:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public setFlightNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightNum:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
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

.method public setFlightSchema(Lcom/android/calendar/common/event/schema/FlightSchema;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightSchema:Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mFlightSchema:Lcom/android/calendar/common/event/schema/FlightSchema;

    .line 4
    .line 5
    return-void
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

.method public setPassengers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/FlightPassenger;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/event/schema/FlightEvent;->mPassengers:Ljava/util/List;

    .line 2
    .line 3
    return-void
    .line 4
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
