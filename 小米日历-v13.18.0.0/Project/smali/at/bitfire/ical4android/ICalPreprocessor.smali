.class public final Lat/bitfire/ical4android/ICalPreprocessor;
.super Ljava/lang/Object;
.source "ICalPreprocessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR*\u0010\u0012\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0008\u0001\u0012\n \u0011*\u0004\u0018\u00010\u00020\u00020\u00100\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lat/bitfire/ical4android/ICalPreprocessor;",
        "",
        "Lnet/fortuna/ical4j/model/Property;",
        "property",
        "Lkotlin/u;",
        "applyRules",
        "Ljava/io/Reader;",
        "reader",
        "fixInvalidUtcOffset",
        "Lnet/fortuna/ical4j/model/Calendar;",
        "calendar",
        "preProcess",
        "Lkotlin/text/Regex;",
        "TZOFFSET_REGEXP",
        "Lkotlin/text/Regex;",
        "",
        "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;",
        "kotlin.jvm.PlatformType",
        "propertyRules",
        "[Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;",
        "<init>",
        "()V",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lat/bitfire/ical4android/ICalPreprocessor;

.field private static final TZOFFSET_REGEXP:Lkotlin/text/Regex;

.field private static final propertyRules:[Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule<",
            "+",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/ical4android/ICalPreprocessor;

    .line 2
    .line 3
    invoke-direct {v0}, Lat/bitfire/ical4android/ICalPreprocessor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lat/bitfire/ical4android/ICalPreprocessor;->INSTANCE:Lat/bitfire/ical4android/ICalPreprocessor;

    .line 7
    .line 8
    new-instance v0, Lkotlin/text/Regex;

    .line 9
    .line 10
    sget-object v1, Lkotlin/text/RegexOption;->MULTILINE:Lkotlin/text/RegexOption;

    .line 11
    .line 12
    const-string v2, "^(TZOFFSET(FROM|TO):[+\\-]?)((18|19|[2-6]\\d)\\d\\d)$"

    .line 13
    .line 14
    invoke-direct {v0, v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lat/bitfire/ical4android/ICalPreprocessor;->TZOFFSET_REGEXP:Lkotlin/text/Regex;

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;

    .line 21
    .line 22
    new-instance v1, Lnet/fortuna/ical4j/transform/rfc5545/CreatedPropertyRule;

    .line 23
    .line 24
    invoke-direct {v1}, Lnet/fortuna/ical4j/transform/rfc5545/CreatedPropertyRule;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    new-instance v1, Lnet/fortuna/ical4j/transform/rfc5545/DatePropertyRule;

    .line 31
    .line 32
    invoke-direct {v1}, Lnet/fortuna/ical4j/transform/rfc5545/DatePropertyRule;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    aput-object v1, v0, v2

    .line 37
    .line 38
    new-instance v1, Lnet/fortuna/ical4j/transform/rfc5545/DateListPropertyRule;

    .line 39
    .line 40
    invoke-direct {v1}, Lnet/fortuna/ical4j/transform/rfc5545/DateListPropertyRule;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    aput-object v1, v0, v2

    .line 45
    .line 46
    sput-object v0, Lat/bitfire/ical4android/ICalPreprocessor;->propertyRules:[Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;

    .line 47
    .line 48
    return-void
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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final applyRules(Lnet/fortuna/ical4j/model/Property;)V
    .locals 7

    .line 1
    sget-object v0, Lat/bitfire/ical4android/ICalPreprocessor;->propertyRules:[Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    aget-object v4, v0, v3

    .line 13
    .line 14
    invoke-interface {v4}, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;->getSupportedType()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545PropertyRule;

    .line 49
    .line 50
    sget-object v2, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    .line 51
    .line 52
    invoke-virtual {v2}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v6, "Applying rules to "

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v3, "null cannot be cast to non-null type net.fortuna.ical4j.transform.rfc5545.Rfc5545PropertyRule<net.fortuna.ical4j.model.Property>"

    .line 79
    .line 80
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, p1}, Lnet/fortuna/ical4j/transform/rfc5545/Rfc5545Rule;->applyTo(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "-> "

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    return-void
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

.method private static final fixInvalidUtcOffset$fixStringFromReader(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljc/b;->d(Ljava/io/Reader;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "toString(reader)"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lat/bitfire/ical4android/ICalPreprocessor;->TZOFFSET_REGEXP:Lkotlin/text/Regex;

    .line 11
    .line 12
    sget-object v1, Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;->INSTANCE:Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lw7/l;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public final fixInvalidUtcOffset(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 3

    .line 1
    const-string v0, "reader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move v1, v0

    .line 13
    :goto_0
    if-eqz v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/util/Scanner;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lat/bitfire/ical4android/ICalPreprocessor;->TZOFFSET_REGEXP:Lkotlin/text/Regex;

    .line 21
    .line 22
    invoke-virtual {v2}, Lkotlin/text/Regex;->toPattern()Ljava/util/regex/Pattern;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2, v0}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lat/bitfire/ical4android/ICalPreprocessor;->fixInvalidUtcOffset$fixStringFromReader(Ljava/io/Reader;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {p1}, Lat/bitfire/ical4android/ICalPreprocessor;->fixInvalidUtcOffset$fixStringFromReader(Ljava/io/Reader;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    if-eqz v0, :cond_2

    .line 47
    .line 48
    new-instance p1, Ljava/io/StringReader;

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    .line 55
    .line 56
    .line 57
    return-object p1
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public final preProcess(Lnet/fortuna/ical4j/model/Calendar;)V
    .locals 3

    .line 1
    const-string v0, "calendar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 25
    .line 26
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 45
    .line 46
    const-string v2, "property"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1}, Lat/bitfire/ical4android/ICalPreprocessor;->applyRules(Lnet/fortuna/ical4j/model/Property;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
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
