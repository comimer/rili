.class public final synthetic Lnet/fortuna/ical4j/model/component/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/component/Available;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/Available;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/a;->a:Lnet/fortuna/ical4j/model/component/Available;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/a;->a:Lnet/fortuna/ical4j/model/component/Available;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/component/Available;->s(Lnet/fortuna/ical4j/model/component/Available;Ljava/lang/String;)V

    return-void
.end method
