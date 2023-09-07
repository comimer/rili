.class public final synthetic Lnet/fortuna/ical4j/model/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/net/URI;

    invoke-static {p1}, Lnet/fortuna/ical4j/model/AddressList;->c(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
