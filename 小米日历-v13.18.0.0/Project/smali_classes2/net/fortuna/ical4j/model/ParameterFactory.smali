.class public interface abstract Lnet/fortuna/ical4j/model/ParameterFactory;
.super Ljava/lang/Object;
.source "ParameterFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/fortuna/ical4j/model/Parameter;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract createParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation
.end method

.method public abstract supports(Ljava/lang/String;)Z
.end method
