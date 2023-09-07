.class public Lnet/fortuna/ical4j/data/CalendarBuilder;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lnet/fortuna/ical4j/model/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private calendar:Lnet/fortuna/ical4j/model/Calendar;

.field private final contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

.field private final parser:Lnet/fortuna/ical4j/data/CalendarParser;

.field private final tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

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

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->getInstance()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/data/CalendarParser;

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    .line 3
    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 4
    new-instance v1, Lnet/fortuna/ical4j/data/DefaultContentHandler;

    invoke-direct {v1, p0, v0}, Lnet/fortuna/ical4j/data/DefaultContentHandler;-><init>(Ljava/util/function/Consumer;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    iput-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarParser;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    .line 7
    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->getInstance()Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZoneRegistryFactory;->createRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object p1

    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/data/DefaultContentHandler;

    invoke-direct {v0, p0, p1}, Lnet/fortuna/ical4j/data/DefaultContentHandler;-><init>(Ljava/util/function/Consumer;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarParser;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/data/CalendarParser;",
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
            "*>;>;>;",
            "Lnet/fortuna/ical4j/model/TimeZoneRegistry;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    .line 20
    iput-object p5, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 21
    new-instance p1, Lnet/fortuna/ical4j/data/DefaultContentHandler;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/fortuna/ical4j/data/DefaultContentHandler;-><init>(Ljava/util/function/Consumer;Lnet/fortuna/ical4j/model/TimeZoneRegistry;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/PropertyFactoryRegistry;Lnet/fortuna/ical4j/model/ParameterFactoryRegistry;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    new-instance v4, Lnet/fortuna/ical4j/data/DefaultComponentFactorySupplier;

    invoke-direct {v4}, Lnet/fortuna/ical4j/data/DefaultComponentFactorySupplier;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>(Lnet/fortuna/ical4j/data/CalendarParser;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarParser;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    .line 15
    iput-object p2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 16
    new-instance p1, Lnet/fortuna/ical4j/data/DefaultContentHandler;

    invoke-direct {p1, p0, p2}, Lnet/fortuna/ical4j/data/DefaultContentHandler;-><init>(Ljava/util/function/Consumer;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->getInstance()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/data/CalendarParser;

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    .line 11
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    .line 12
    new-instance v0, Lnet/fortuna/ical4j/data/DefaultContentHandler;

    invoke-direct {v0, p0, p1}, Lnet/fortuna/ical4j/data/DefaultContentHandler;-><init>(Ljava/util/function/Consumer;Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->accept(Lnet/fortuna/ical4j/model/Calendar;)V

    return-void
.end method

.method public accept(Lnet/fortuna/ical4j/model/Calendar;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    return-void
.end method

.method public build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/Reader;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/io/Reader;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/data/UnfoldingReader;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/data/UnfoldingReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Lnet/fortuna/ical4j/data/UnfoldingReader;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public build(Lnet/fortuna/ical4j/data/UnfoldingReader;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->parser:Lnet/fortuna/ical4j/data/CalendarParser;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->contentHandler:Lnet/fortuna/ical4j/data/ContentHandler;

    invoke-interface {v0, p1, v1}, Lnet/fortuna/ical4j/data/CalendarParser;->parse(Ljava/io/Reader;Lnet/fortuna/ical4j/data/ContentHandler;)V

    .line 4
    iget-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    return-object p1
.end method

.method public final getRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
