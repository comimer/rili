.class public Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;
.super Ljava/lang/Object;
.source "CalendarValidatorImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/validate/Validator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$DeclineCounterValidator;,
        Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CounterValidator;,
        Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$RefreshValidator;,
        Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CancelValidator;,
        Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$AddValidator;,
        Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$ReplyValidator;,
        Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$RequestValidator;,
        Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$PublishValidator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/fortuna/ical4j/validate/Validator<",
        "Lnet/fortuna/ical4j/model/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field protected final calendarProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/validate/ValidationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lnet/fortuna/ical4j/validate/ValidationRule;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->calendarProperties:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->rules:Ljava/util/List;

    .line 16
    .line 17
    const/16 p1, 0xe

    .line 18
    .line 19
    new-array p1, p1, [Ljava/lang/Class;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const-class v2, Lnet/fortuna/ical4j/model/property/CalScale;

    .line 23
    .line 24
    aput-object v2, p1, v1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const-class v2, Lnet/fortuna/ical4j/model/property/Method;

    .line 28
    .line 29
    aput-object v2, p1, v1

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    const-class v2, Lnet/fortuna/ical4j/model/property/ProdId;

    .line 33
    .line 34
    aput-object v2, p1, v1

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    const-class v2, Lnet/fortuna/ical4j/model/property/Version;

    .line 38
    .line 39
    aput-object v2, p1, v1

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    const-class v2, Lnet/fortuna/ical4j/model/property/Uid;

    .line 43
    .line 44
    aput-object v2, p1, v1

    .line 45
    .line 46
    const/4 v1, 0x5

    .line 47
    const-class v2, Lnet/fortuna/ical4j/model/property/LastModified;

    .line 48
    .line 49
    aput-object v2, p1, v1

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    const-class v2, Lnet/fortuna/ical4j/model/property/Url;

    .line 53
    .line 54
    aput-object v2, p1, v1

    .line 55
    .line 56
    const/4 v1, 0x7

    .line 57
    const-class v2, Lnet/fortuna/ical4j/model/property/RefreshInterval;

    .line 58
    .line 59
    aput-object v2, p1, v1

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    const-class v2, Lnet/fortuna/ical4j/model/property/Source;

    .line 64
    .line 65
    aput-object v2, p1, v1

    .line 66
    .line 67
    const/16 v1, 0x9

    .line 68
    .line 69
    const-class v2, Lnet/fortuna/ical4j/model/property/Color;

    .line 70
    .line 71
    aput-object v2, p1, v1

    .line 72
    .line 73
    const/16 v1, 0xa

    .line 74
    .line 75
    const-class v2, Lnet/fortuna/ical4j/model/property/Name;

    .line 76
    .line 77
    aput-object v2, p1, v1

    .line 78
    .line 79
    const/16 v1, 0xb

    .line 80
    .line 81
    const-class v2, Lnet/fortuna/ical4j/model/property/Description;

    .line 82
    .line 83
    aput-object v2, p1, v1

    .line 84
    .line 85
    const/16 v1, 0xc

    .line 86
    .line 87
    const-class v2, Lnet/fortuna/ical4j/model/property/Categories;

    .line 88
    .line 89
    aput-object v2, p1, v1

    .line 90
    .line 91
    const/16 v1, 0xd

    .line 92
    .line 93
    const-class v2, Lnet/fortuna/ical4j/model/property/Image;

    .line 94
    .line 95
    aput-object v2, p1, v1

    .line 96
    .line 97
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    return-void
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

.method public static synthetic a(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->lambda$validate$1(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->lambda$validate$2(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->lambda$validate$3(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lnet/fortuna/ical4j/model/Property;Ljava/lang/Class;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->lambda$validate$4(Lnet/fortuna/ical4j/model/Property;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->lambda$validate$0(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$validate$0(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

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

.method private static synthetic lambda$validate$1(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

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

.method private static synthetic lambda$validate$2(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

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

.method private static synthetic lambda$validate$3(Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p0}, Lnet/fortuna/ical4j/validate/PropertyValidator;->assertOneOrMore(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

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

.method private static synthetic lambda$validate$4(Lnet/fortuna/ical4j/model/Property;Ljava/lang/Class;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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


# virtual methods
.method public bridge synthetic validate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    return-void
.end method

.method public validate(Lnet/fortuna/ical4j/model/Calendar;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ical4j.validation.relaxed"

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/validate/ValidationRule;

    .line 3
    invoke-static {v3}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lnet/fortuna/ical4j/validate/ValidationRule;->isRelaxedModeSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v3, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$1;->$SwitchMap$net$fortuna$ical4j$validate$ValidationRule$ValidationType:[I

    invoke-virtual {v1}, Lnet/fortuna/ical4j/validate/ValidationRule;->getType()Lnet/fortuna/ical4j/validate/ValidationRule$ValidationType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_4

    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lnet/fortuna/ical4j/validate/ValidationRule;->getInstances()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/validate/d;

    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/validate/d;-><init>(Lnet/fortuna/ical4j/model/Calendar;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lnet/fortuna/ical4j/validate/ValidationRule;->getInstances()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/validate/c;

    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/validate/c;-><init>(Lnet/fortuna/ical4j/model/Calendar;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1}, Lnet/fortuna/ical4j/validate/ValidationRule;->getInstances()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/validate/b;

    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/validate/b;-><init>(Lnet/fortuna/ical4j/model/Calendar;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v1}, Lnet/fortuna/ical4j/validate/ValidationRule;->getInstances()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/validate/a;

    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/validate/a;-><init>(Lnet/fortuna/ical4j/model/Calendar;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {v3}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 11
    sget-object v0, Lnet/fortuna/ical4j/model/property/Version;->VERSION_2_0:Lnet/fortuna/ical4j/model/property/Version;

    const-string v1, "VERSION"

    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object p1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 14
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 15
    iget-object v3, p0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl;->calendarProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lnet/fortuna/ical4j/validate/e;

    invoke-direct {v4, v1}, Lnet/fortuna/ical4j/validate/e;-><init>(Lnet/fortuna/ical4j/model/Property;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 16
    :goto_3
    instance-of v4, v1, Lnet/fortuna/ical4j/model/property/XProperty;

    if-nez v4, :cond_8

    if-eqz v3, :cond_a

    goto :goto_2

    .line 17
    :cond_a
    new-instance p1, Lnet/fortuna/ical4j/validate/ValidationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid property: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string v0, "METHOD"

    .line 18
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/property/Method;

    .line 19
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 20
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$PublishValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$PublishValidator;-><init>()V

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$PublishValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    goto/16 :goto_4

    .line 21
    :cond_c
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->REQUEST:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 22
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$RequestValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$RequestValidator;-><init>()V

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$RequestValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    goto/16 :goto_4

    .line 23
    :cond_d
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->REPLY:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 24
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$ReplyValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$ReplyValidator;-><init>()V

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$ReplyValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    goto :goto_4

    .line 25
    :cond_e
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->ADD:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 26
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$AddValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$AddValidator;-><init>()V

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$AddValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    goto :goto_4

    .line 27
    :cond_f
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->CANCEL:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 28
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CancelValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CancelValidator;-><init>()V

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CancelValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    goto :goto_4

    .line 29
    :cond_10
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->REFRESH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 30
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$RefreshValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$RefreshValidator;-><init>()V

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$RefreshValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    goto :goto_4

    .line 31
    :cond_11
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 32
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CounterValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CounterValidator;-><init>()V

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$CounterValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    goto :goto_4

    .line 33
    :cond_12
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->DECLINE_COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    new-instance v0, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$DeclineCounterValidator;

    invoke-direct {v0}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$DeclineCounterValidator;-><init>()V

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/validate/CalendarValidatorImpl$DeclineCounterValidator;->validate(Lnet/fortuna/ical4j/model/Calendar;)V

    :cond_13
    :goto_4
    if-eqz v1, :cond_14

    .line 35
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 36
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    goto :goto_5

    :cond_14
    return-void

    .line 37
    :cond_15
    new-instance p1, Lnet/fortuna/ical4j/validate/ValidationException;

    const-string v0, "Calendar must contain at least one component"

    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
