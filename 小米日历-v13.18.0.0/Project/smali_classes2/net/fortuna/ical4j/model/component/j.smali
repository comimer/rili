.class public final synthetic Lnet/fortuna/ical4j/model/component/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/component/VToDo;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VToDo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/j;->a:Lnet/fortuna/ical4j/model/component/VToDo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/j;->a:Lnet/fortuna/ical4j/model/component/VToDo;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/component/VToDo;->s(Lnet/fortuna/ical4j/model/component/VToDo;Ljava/lang/String;)V

    return-void
.end method
