.class public abstract Lnet/fortuna/ical4j/data/CalendarParserFactory;
.super Ljava/lang/Object;
.source "CalendarParserFactory.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lnet/fortuna/ical4j/data/CalendarParser;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_FACTORY_CLASS:Ljava/lang/String; = "net.fortuna.ical4j.parser"

.field private static instance:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lnet/fortuna/ical4j/data/CalendarParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "net.fortuna.ical4j.parser"

    .line 2
    .line 3
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Configurator;->getObjectProperty(Ljava/lang/String;)Ljava/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lnet/fortuna/ical4j/data/a;

    .line 8
    .line 9
    invoke-direct {v1}, Lnet/fortuna/ical4j/data/a;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/util/function/Supplier;

    .line 17
    .line 18
    sput-object v0, Lnet/fortuna/ical4j/data/CalendarParserFactory;->instance:Ljava/util/function/Supplier;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lnet/fortuna/ical4j/data/CalendarParser;
    .locals 1

    invoke-static {}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->lambda$static$0()Lnet/fortuna/ical4j/data/CalendarParser;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lnet/fortuna/ical4j/data/CalendarParser;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/data/CalendarParserFactory;->instance:Ljava/util/function/Supplier;

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

.method private static synthetic lambda$static$0()Lnet/fortuna/ical4j/data/CalendarParser;
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarParserImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/fortuna/ical4j/data/CalendarParserImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
