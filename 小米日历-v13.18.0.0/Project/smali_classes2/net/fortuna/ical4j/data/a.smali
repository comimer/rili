.class public final synthetic Lnet/fortuna/ical4j/data/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lnet/fortuna/ical4j/data/CalendarParserFactory;->a()Lnet/fortuna/ical4j/data/CalendarParser;

    move-result-object v0

    return-object v0
.end method
