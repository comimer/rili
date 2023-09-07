.class public Lnet/fortuna/ical4j/filter/HasPropertyRule;
.super Ljava/lang/Object;
.source "HasPropertyRule.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/fortuna/ical4j/model/Component;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private matchEquals:Z

.field private property:Lnet/fortuna/ical4j/model/Property;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/Property;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/filter/HasPropertyRule;-><init>(Lnet/fortuna/ical4j/model/Property;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/Property;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->property:Lnet/fortuna/ical4j/model/Property;

    .line 4
    iput-boolean p2, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->matchEquals:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/filter/HasPropertyRule;->test(Lnet/fortuna/ical4j/model/Component;)Z

    move-result p1

    return p1
.end method

.method public final test(Lnet/fortuna/ical4j/model/Component;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 4
    iget-boolean v2, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->matchEquals:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/model/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lnet/fortuna/ical4j/filter/HasPropertyRule;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Content;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    return v0
.end method
