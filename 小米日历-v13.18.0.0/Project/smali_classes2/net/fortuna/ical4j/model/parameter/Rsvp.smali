.class public Lnet/fortuna/ical4j/model/parameter/Rsvp;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Rsvp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/parameter/Rsvp$Factory;
    }
.end annotation


# static fields
.field public static final FALSE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

.field public static final TRUE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

.field private static final VALUE_FALSE:Ljava/lang/String; = "FALSE"

.field private static final VALUE_TRUE:Ljava/lang/String; = "TRUE"

.field private static final serialVersionUID:J = -0x4aaf79b17cdc51dcL


# instance fields
.field private rsvp:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;

    .line 2
    .line 3
    const-string v1, "TRUE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Rsvp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->TRUE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    .line 9
    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;

    .line 11
    .line 12
    const-string v1, "FALSE"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Rsvp;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->FALSE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    .line 18
    .line 19
    return-void
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Rsvp$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/parameter/Rsvp$Factory;-><init>()V

    const-string v1, "RSVP"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->rsvp:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/parameter/Rsvp;-><init>(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final copy()Lnet/fortuna/ical4j/model/Parameter;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->rsvp:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->TRUE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->FALSE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    .line 13
    .line 14
    return-object v0
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

.method public final getRsvp()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->rsvp:Ljava/lang/Boolean;

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

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->rsvp:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "TRUE"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "FALSE"

    .line 13
    .line 14
    return-object v0
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
