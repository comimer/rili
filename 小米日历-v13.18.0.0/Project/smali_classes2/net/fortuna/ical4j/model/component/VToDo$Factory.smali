.class public Lnet/fortuna/ical4j/model/component/VToDo$Factory;
.super Lnet/fortuna/ical4j/model/Content$Factory;
.source "VToDo.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/ComponentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VToDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/fortuna/ical4j/model/Content$Factory;",
        "Lnet/fortuna/ical4j/model/ComponentFactory<",
        "Lnet/fortuna/ical4j/model/component/VToDo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "VTODO"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Content$Factory;-><init>([Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
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
.method public bridge synthetic createComponent()Lnet/fortuna/ical4j/model/Component;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VToDo$Factory;->createComponent()Lnet/fortuna/ical4j/model/component/VToDo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createComponent(Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/component/VToDo$Factory;->createComponent(Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/component/VToDo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createComponent(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/Component;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lnet/fortuna/ical4j/model/component/VToDo$Factory;->createComponent(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VToDo;

    move-result-object p1

    return-object p1
.end method

.method public createComponent()Lnet/fortuna/ical4j/model/component/VToDo;
    .locals 2

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/component/VToDo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>(Z)V

    return-object v0
.end method

.method public createComponent(Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/component/VToDo;
    .locals 1

    .line 5
    new-instance v0, Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    return-object v0
.end method

.method public createComponent(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)Lnet/fortuna/ical4j/model/component/VToDo;
    .locals 1

    .line 6
    new-instance v0, Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>(Lnet/fortuna/ical4j/model/PropertyList;Lnet/fortuna/ical4j/model/ComponentList;)V

    return-object v0
.end method
