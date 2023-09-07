.class public final synthetic Lcom/miui/calendar/detail/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/detail/SubscribeGroupActivity;

.field public final synthetic b:Lcom/miui/calendar/card/schema/CustomCardSchema;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/detail/SubscribeGroupActivity;Lcom/miui/calendar/card/schema/CustomCardSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/detail/k;->a:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    iput-object p2, p0, Lcom/miui/calendar/detail/k;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/detail/k;->a:Lcom/miui/calendar/detail/SubscribeGroupActivity;

    iget-object v1, p0, Lcom/miui/calendar/detail/k;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/detail/SubscribeGroupActivity$d;->h(Lcom/miui/calendar/detail/SubscribeGroupActivity;Lcom/miui/calendar/card/schema/CustomCardSchema;Landroid/view/View;)V

    return-void
.end method
