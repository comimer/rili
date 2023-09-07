.class public final synthetic Lcom/miui/calendar/detail/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field public final synthetic b:Lcom/miui/calendar/detail/SubscribeGroupActivity;

.field public final synthetic c:Lcom/miui/calendar/detail/SubscribeGroupActivity$d;

.field public final synthetic d:Lcom/miui/calendar/detail/SubscribeGroupActivity$e;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/schema/CustomCardSchema;Lcom/miui/calendar/detail/SubscribeGroupActivity;Lcom/miui/calendar/detail/SubscribeGroupActivity$d;Lcom/miui/calendar/detail/SubscribeGroupActivity$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/detail/m;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    iput-object p2, p0, Lcom/miui/calendar/detail/m;->b:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    iput-object p3, p0, Lcom/miui/calendar/detail/m;->c:Lcom/miui/calendar/detail/SubscribeGroupActivity$d;

    iput-object p4, p0, Lcom/miui/calendar/detail/m;->d:Lcom/miui/calendar/detail/SubscribeGroupActivity$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/calendar/detail/m;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    iget-object v1, p0, Lcom/miui/calendar/detail/m;->b:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    iget-object v2, p0, Lcom/miui/calendar/detail/m;->c:Lcom/miui/calendar/detail/SubscribeGroupActivity$d;

    iget-object v3, p0, Lcom/miui/calendar/detail/m;->d:Lcom/miui/calendar/detail/SubscribeGroupActivity$e;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity$d;->f(Lcom/miui/calendar/card/schema/CustomCardSchema;Lcom/miui/calendar/detail/SubscribeGroupActivity;Lcom/miui/calendar/detail/SubscribeGroupActivity$d;Lcom/miui/calendar/detail/SubscribeGroupActivity$e;Landroid/view/View;)V

    return-void
.end method
