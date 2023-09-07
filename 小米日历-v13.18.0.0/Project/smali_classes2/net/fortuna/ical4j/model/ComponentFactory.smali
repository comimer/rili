.class public interface abstract Lnet/fortuna/ical4j/model/ComponentFactory;
.super Ljava/lang/Object;
.source "ComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/fortuna/ical4j/model/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createComponent()Lnet/fortuna/ical4j/model/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract createComponent(Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/PropertyList;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createComponent(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/fortuna/ical4j/model/PropertyList;",
            "Lnet/fortuna/ical4j/model/ComponentList;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract supports(Ljava/lang/String;)Z
.end method
