.class final Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ICalPreprocessor.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/bitfire/ical4android/ICalPreprocessor;->fixInvalidUtcOffset$fixStringFromReader(Ljava/io/Reader;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lkotlin/text/i;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlin/text/i;",
        "it",
        "",
        "invoke",
        "(Lkotlin/text/i;)Ljava/lang/CharSequence;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;

    invoke-direct {v0}, Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;-><init>()V

    sput-object v0, Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;->INSTANCE:Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/text/i;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lat/bitfire/ical4android/Ical4Android;->INSTANCE:Lat/bitfire/ical4android/Ical4Android;

    invoke-virtual {v0}, Lat/bitfire/ical4android/Ical4Android;->getLog()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {p1}, Lkotlin/text/i;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Applying Synology WebDAV fix to invalid utc-offset"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lkotlin/text/i;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/text/i;->b()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/text/i;

    invoke-virtual {p0, p1}, Lat/bitfire/ical4android/ICalPreprocessor$fixInvalidUtcOffset$fixStringFromReader$1;->invoke(Lkotlin/text/i;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
