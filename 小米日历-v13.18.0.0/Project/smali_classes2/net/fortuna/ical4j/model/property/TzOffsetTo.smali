.class public Lnet/fortuna/ical4j/model/property/TzOffsetTo;
.super Lnet/fortuna/ical4j/model/Property;
.source "TzOffsetTo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x71fd8b683389bf04L


# instance fields
.field private offset:Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;-><init>()V

    const-string v1, "TZOFFSETTO"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;-><init>()V

    const-string v1, "TZOFFSETTO"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/ZoneOffset;)V
    .locals 2

    .line 7
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;-><init>()V

    const-string v1, "TZOFFSETTO"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;-><init>(Ljava/time/ZoneOffset;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;-><init>()V

    const-string v1, "TZOFFSETTO"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/time/ZoneOffset;)V
    .locals 2

    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/TzOffsetTo$Factory;-><init>()V

    const-string v1, "TZOFFSETTO"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 11
    new-instance p1, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    invoke-direct {p1, p2}, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;-><init>(Ljava/time/ZoneOffset;)V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/UtcOffset;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-static {p2}, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;->from(Lnet/fortuna/ical4j/model/UtcOffset;)Ljava/time/ZoneOffset;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/time/ZoneOffset;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/UtcOffset;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p1}, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;->from(Lnet/fortuna/ical4j/model/UtcOffset;)Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/property/TzOffsetTo;-><init>(Ljava/time/ZoneOffset;)V

    return-void
.end method


# virtual methods
.method public final getOffset()Ljava/time/ZoneOffset;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;->getOffset()Ljava/time/ZoneOffset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
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

.method public final setOffset(Ljava/time/ZoneOffset;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;-><init>(Ljava/time/ZoneOffset;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

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
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;-><init>(Ljava/time/ZoneOffset;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/TzOffsetTo;->offset:Lnet/fortuna/ical4j/model/ZoneOffsetAdapter;

    .line 11
    .line 12
    return-void
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

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    return-void
.end method
