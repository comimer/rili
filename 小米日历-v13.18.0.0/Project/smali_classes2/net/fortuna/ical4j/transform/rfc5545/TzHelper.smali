.class Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;
.super Ljava/lang/Object;
.source "TzHelper.java"


# static fields
.field private static final LOG:Lrc/b;

.field private static final MS_TIMEZONES_FILE:Ljava/lang/String; = "msTimezones"

.field private static final MS_TIMEZONE_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MS_TIMEZONE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMEZONE_REGISTRY:Lnet/fortuna/ical4j/model/TimeZoneRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->MS_TIMEZONE_IDS:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->MS_TIMEZONE_NAMES:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->TIMEZONE_REGISTRY:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 24
    .line 25
    const-class v0, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;

    .line 26
    .line 27
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->LOG:Lrc/b;

    .line 32
    .line 33
    invoke-static {}, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->initMsTimezones()V

    .line 34
    .line 35
    .line 36
    return-void
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
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTzParameter(Lnet/fortuna/ical4j/model/Property;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TZID"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->removeAll(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/TzId;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/parameter/TzId;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
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
.end method

.method static correctTzParameterFrom(Lnet/fortuna/ical4j/model/Property;)V
    .locals 1

    const-string v0, "TZID"

    .line 1
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->getCorrectedTimezoneFromTzParameter(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->correctTzParameter(Lnet/fortuna/ical4j/model/Property;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static correctTzParameterFrom(Lnet/fortuna/ical4j/model/property/DateProperty;)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TZID"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Z"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->removeAll(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p0}, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->getCorrectedTimezoneFromTzParameter(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p0, v0}, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->correctTzParameter(Lnet/fortuna/ical4j/model/Property;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 10
    sget-object v2, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->TIMEZONE_REGISTRY:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    invoke-interface {v2, v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 11
    :try_start_0
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/DateProperty;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    sget-object v0, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->LOG:Lrc/b;

    const-string v1, "Failed to reset property value"

    invoke-interface {v0, v1, p0}, Lrc/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->setUtc(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static correctTzValueOf(Lnet/fortuna/ical4j/model/property/TzId;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/TzId;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->getCorrectedTimeZoneIdFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/TzId;->setValue(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
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

.method private static getCorrectedTimeZoneIdFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const-string v0, "\""

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->TIMEZONE_REGISTRY:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->MS_TIMEZONE_NAMES:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_2
    return-object v1

    .line 59
    :cond_3
    sget-object v0, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->MS_TIMEZONE_IDS:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/String;

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_4
    const/4 p0, 0x0

    .line 69
    return-object p0
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
.end method

.method private static getCorrectedTimezoneFromTzParameter(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "TZID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->getCorrectedTimeZoneIdFrom(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
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

.method private static initMsTimezones()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    .line 2
    .line 3
    const-class v1, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;

    .line 4
    .line 5
    const-string v2, "msTimezones"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "="

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x1

    .line 31
    aget-object v3, v1, v2

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aget-object v1, v1, v4

    .line 35
    .line 36
    const-string v5, ";"

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v5, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->MS_TIMEZONE_NAMES:Ljava/util/Map;

    .line 43
    .line 44
    aget-object v4, v1, v4

    .line 45
    .line 46
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    sget-object v4, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->MS_TIMEZONE_IDS:Ljava/util/Map;

    .line 50
    .line 51
    aget-object v1, v1, v2

    .line 52
    .line 53
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception v2

    .line 64
    :try_start_4
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_2
    move-exception v0

    .line 69
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lnet/fortuna/ical4j/transform/rfc5545/TzHelper;->LOG:Lrc/b;

    .line 75
    .line 76
    const-string v2, "Could not load MS timezones"

    .line 77
    .line 78
    invoke-interface {v1, v2, v0}, Lrc/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    const-string v2, "Unable to load resource file msTimezones"

    .line 84
    .line 85
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v1
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
.end method
