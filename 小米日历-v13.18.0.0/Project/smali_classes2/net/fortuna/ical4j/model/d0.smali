.class public final synthetic Lnet/fortuna/ical4j/model/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/d0;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/d0;->a:Ljava/util/List;

    check-cast p1, Lnet/fortuna/ical4j/model/Parameter;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->c(Ljava/util/List;Lnet/fortuna/ical4j/model/Parameter;)V

    return-void
.end method
