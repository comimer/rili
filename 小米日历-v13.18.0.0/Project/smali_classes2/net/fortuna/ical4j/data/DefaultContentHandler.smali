.class public Lnet/fortuna/ical4j/data/DefaultContentHandler;
.super Ljava/lang/Object;
.source "DefaultContentHandler.java"

# interfaces
.implements Lnet/fortuna/ical4j/data/ContentHandler;


# static fields
.field private static final LOG:Lrc/b;


# instance fields
.field private calendar:Lnet/fortuna/ical4j/model/Calendar;

.field private componentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/ComponentBuilder<",
            "Lnet/fortuna/ical4j/model/component/CalendarComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final componentFactorySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ComponentFactory<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lnet/fortuna/ical4j/model/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterFactorySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ParameterFactory<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private propertiesWithTzId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/Property;",
            ">;"
        }
    .end annotation
.end field

.field private propertyBuilder:Lnet/fortuna/ical4j/model/PropertyBuilder;

.field private final propertyFactorySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/PropertyFactory<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private propertyHasTzId:Z

.field private subComponentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/fortuna/ical4j/model/ComponentBuilder<",
            "Lnet/fortuna/ical4j/model/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lnet/fortuna/ical4j/data/DefaultContentHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->LOG:Lrc/b;

    .line 8
    .line 9
    return-void
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
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lnet/fortuna/ical4j/model/Calendar;",
            ">;",
            "Lnet/fortuna/ical4j/model/TimeZoneRegistry;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v3, Lnet/fortuna/ical4j/data/DefaultParameterFactorySupplier;

    invoke-direct {v3}, Lnet/fortuna/ical4j/data/DefaultParameterFactorySupplier;-><init>()V

    new-instance v4, Lnet/fortuna/ical4j/data/DefaultPropertyFactorySupplier;

    invoke-direct {v4}, Lnet/fortuna/ical4j/data/DefaultPropertyFactorySupplier;-><init>()V

    new-instance v5, Lnet/fortuna/ical4j/data/DefaultComponentFactorySupplier;

    invoke-direct {v5}, Lnet/fortuna/ical4j/data/DefaultComponentFactorySupplier;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/fortuna/ical4j/data/DefaultContentHandler;-><init>(Ljava/util/function/Consumer;Lnet/fortuna/ical4j/model/TimeZoneRegistry;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Lnet/fortuna/ical4j/model/TimeZoneRegistry;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lnet/fortuna/ical4j/model/Calendar;",
            ">;",
            "Lnet/fortuna/ical4j/model/TimeZoneRegistry;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ParameterFactory<",
            "*>;>;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/PropertyFactory<",
            "*>;>;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lnet/fortuna/ical4j/model/ComponentFactory<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyHasTzId:Z

    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->consumer:Ljava/util/function/Consumer;

    .line 5
    iput-object p2, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 6
    iput-object p3, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->parameterFactorySupplier:Ljava/util/function/Supplier;

    .line 7
    iput-object p4, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyFactorySupplier:Ljava/util/function/Supplier;

    .line 8
    iput-object p5, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentFactorySupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method private assertComponent(Lnet/fortuna/ical4j/model/ComponentBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/ComponentBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Lnet/fortuna/ical4j/model/CalendarException;

    .line 5
    .line 6
    const-string v0, "Expected component not initialised"

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p1
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

.method private assertProperty(Lnet/fortuna/ical4j/model/PropertyBuilder;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Lnet/fortuna/ical4j/model/CalendarException;

    .line 5
    .line 6
    const-string v0, "Expected property not initialised"

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p1
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

.method private resolveTimezones()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertiesWithTzId:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 18
    .line 19
    const-string v2, "TZID"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lnet/fortuna/ical4j/model/parameter/TzId;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v3, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 30
    .line 31
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/parameter/TzId;->getValue()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v3, v4}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    instance-of v5, v1, Lnet/fortuna/ical4j/model/property/DateProperty;

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    move-object v2, v1

    .line 50
    check-cast v2, Lnet/fortuna/ical4j/model/property/DateProperty;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    instance-of v5, v1, Lnet/fortuna/ical4j/model/property/DateListProperty;

    .line 57
    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    move-object v2, v1

    .line 61
    check-cast v2, Lnet/fortuna/ical4j/model/property/DateListProperty;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lnet/fortuna/ical4j/model/property/DateListProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    sget-object v3, Lnet/fortuna/ical4j/data/DefaultContentHandler;->LOG:Lrc/b;

    .line 68
    .line 69
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Parameter;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v6, "Property [%s] doesn\'t support parameter [%s]"

    .line 78
    .line 79
    invoke-interface {v3, v6, v5, v2}, Lrc/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    :try_start_0
    invoke-virtual {v1, v4}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    .line 89
    :goto_2
    new-instance v1, Lnet/fortuna/ical4j/model/CalendarException;

    .line 90
    .line 91
    invoke-direct {v1, v0}, Lnet/fortuna/ical4j/model/CalendarException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    throw v1

    .line 95
    :cond_3
    return-void
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


# virtual methods
.method public endCalendar()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/fortuna/ical4j/data/DefaultContentHandler;->resolveTimezones()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->consumer:Ljava/util/function/Consumer;

    .line 5
    .line 6
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public endComponent(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/DefaultContentHandler;->assertComponent(Lnet/fortuna/ical4j/model/ComponentBuilder;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->subComponentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->build()Lnet/fortuna/ical4j/model/Component;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->subComponent(Lnet/fortuna/ical4j/model/Component;)Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->subComponentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 24
    .line 25
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->build()Lnet/fortuna/ical4j/model/Component;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lnet/fortuna/ical4j/model/component/CalendarComponent;

    .line 30
    .line 31
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    .line 32
    .line 33
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    instance-of v1, p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    new-instance v2, Lnet/fortuna/ical4j/model/TimeZone;

    .line 49
    .line 50
    check-cast p1, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 51
    .line 52
    invoke-direct {v2, p1}, Lnet/fortuna/ical4j/model/TimeZone;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v2}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->register(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iput-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 59
    .line 60
    :goto_0
    return-void
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
.end method

.method public endProperty(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyBuilder:Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/DefaultContentHandler;->assertProperty(Lnet/fortuna/ical4j/model/PropertyBuilder;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyBuilder:Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PropertyBuilder;->build()Lnet/fortuna/ical4j/model/Property;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-boolean v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyHasTzId:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertiesWithTzId:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Constants;->forProperty(Lnet/fortuna/ical4j/model/Property;)Lnet/fortuna/ical4j/model/Property;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->subComponentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->property(Lnet/fortuna/ical4j/model/Property;)Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->property(Lnet/fortuna/ical4j/model/Property;)Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
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
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyBuilder:Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/data/DefaultContentHandler;->assertProperty(Lnet/fortuna/ical4j/model/PropertyBuilder;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->parameterFactorySupplier:Ljava/util/function/Supplier;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterBuilder;->factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/ParameterBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ParameterBuilder;->name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Lnet/fortuna/ical4j/model/ParameterBuilder;->value(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ParameterBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/ParameterBuilder;->build()Lnet/fortuna/ical4j/model/Parameter;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    instance-of p2, p1, Lnet/fortuna/ical4j/model/parameter/TzId;

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    iget-object p2, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyHasTzId:Z

    .line 45
    .line 46
    :cond_0
    iget-object p2, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyBuilder:Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Lnet/fortuna/ical4j/model/PropertyBuilder;->parameter(Lnet/fortuna/ical4j/model/Parameter;)Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 49
    .line 50
    .line 51
    return-void
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

.method public propertyValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyBuilder:Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyBuilder;->value(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyBuilder;

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

.method public startCalendar()V
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/Calendar;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/Calendar;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertiesWithTzId:Ljava/util/List;

    .line 14
    .line 15
    return-void
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
.end method

.method public startComponent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->subComponentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentFactorySupplier:Ljava/util/function/Supplier;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentBuilder:Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 34
    .line 35
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->componentFactorySupplier:Ljava/util/function/Supplier;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ComponentBuilder;->name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentBuilder;

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
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
.end method

.method public startProperty(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyFactorySupplier:Ljava/util/function/Supplier;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyBuilder;->factories(Ljava/util/List;)Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyBuilder;->name(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyBuilder:Lnet/fortuna/ical4j/model/PropertyBuilder;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lnet/fortuna/ical4j/data/DefaultContentHandler;->propertyHasTzId:Z

    .line 26
    .line 27
    return-void
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method
