.class public final synthetic Lnet/fortuna/ical4j/model/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lnet/fortuna/ical4j/model/Property;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lnet/fortuna/ical4j/model/Property;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/a0;->a:Ljava/util/Map;

    iput-object p2, p0, Lnet/fortuna/ical4j/model/a0;->b:Lnet/fortuna/ical4j/model/Property;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/fortuna/ical4j/model/a0;->a:Ljava/util/Map;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/a0;->b:Lnet/fortuna/ical4j/model/Property;

    check-cast p1, Lnet/fortuna/ical4j/model/Parameter;

    invoke-static {v0, v1, p1}, Lnet/fortuna/ical4j/model/IndexedPropertyList;->a(Ljava/util/Map;Lnet/fortuna/ical4j/model/Property;Lnet/fortuna/ical4j/model/Parameter;)V

    return-void
.end method
