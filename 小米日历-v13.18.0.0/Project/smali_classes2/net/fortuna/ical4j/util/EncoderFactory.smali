.class public abstract Lnet/fortuna/ical4j/util/EncoderFactory;
.super Ljava/lang/Object;
.source "EncoderFactory.java"


# static fields
.field public static final KEY_FACTORY_CLASS:Ljava/lang/String; = "net.fortuna.ical4j.factory.encoder"

.field private static instance:Lnet/fortuna/ical4j/util/EncoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "net.fortuna.ical4j.factory.encoder"

    .line 2
    .line 3
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Configurator;->getObjectProperty(Ljava/lang/String;)Ljava/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lnet/fortuna/ical4j/util/DefaultEncoderFactory;

    .line 8
    .line 9
    invoke-direct {v1}, Lnet/fortuna/ical4j/util/DefaultEncoderFactory;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lnet/fortuna/ical4j/util/EncoderFactory;

    .line 17
    .line 18
    sput-object v0, Lnet/fortuna/ical4j/util/EncoderFactory;->instance:Lnet/fortuna/ical4j/util/EncoderFactory;

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

.method public static getInstance()Lnet/fortuna/ical4j/util/EncoderFactory;
    .locals 1

    .line 1
    sget-object v0, Lnet/fortuna/ical4j/util/EncoderFactory;->instance:Lnet/fortuna/ical4j/util/EncoderFactory;

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


# virtual methods
.method public abstract createBinaryEncoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lec/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract createStringEncoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lec/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method
