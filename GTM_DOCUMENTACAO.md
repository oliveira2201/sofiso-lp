# GTM - Documentação para Gestor de Tráfego
## Sofisco Contabilidade - Landing Page

**Container ID:** `GTM-NCGC42FM`  
**URL:** sofisco.com.br (landing page)

---

## Eventos do dataLayer Disponíveis

### 1. `cta_click` — Clique nos botões de CTA (Diagnóstico Gratuito)

Disparado quando o visitante clica em qualquer botão "Quero Meu Diagnóstico Gratuito" ou "Solicitar Meu Diagnóstico Gratuito".

| Parâmetro | Tipo | Valores possíveis |
|---|---|---|
| `event` | string | `cta_click` |
| `click_location` | string | `hero`, `testimonials`, `cta_section` |

**Uso sugerido no GTM:**
- Trigger: Custom Event = `cta_click`
- Tag GA4: Event name = `cta_click`, parâmetro `click_location`
- Pode ser usado como conversão no Google Ads

---

### 2. `whatsapp_click` — Clique nos links de WhatsApp

Disparado quando o visitante clica em qualquer link de WhatsApp (botões ou botão flutuante).

| Parâmetro | Tipo | Valores possíveis |
|---|---|---|
| `event` | string | `whatsapp_click` |
| `click_location` | string | `hero`, `cta_section`, `floating_button` |

**Uso sugerido no GTM:**
- Trigger: Custom Event = `whatsapp_click`
- Tag GA4: Event name = `whatsapp_click`, parâmetro `click_location`
- **Conversão principal** — marcar como conversão no GA4 e Google Ads

---

### 3. `phone_click` — Clique nos números de telefone

Disparado quando o visitante clica em um número de telefone no rodapé.

| Parâmetro | Tipo | Valores possíveis |
|---|---|---|
| `event` | string | `phone_click` |
| `phone_number` | string | `1136525424`, `1136840804`, `1136525410` |

**Uso sugerido no GTM:**
- Trigger: Custom Event = `phone_click`
- Tag GA4: Event name = `phone_click`, parâmetro `phone_number`

---

### 4. `email_click` — Clique no email

Disparado quando o visitante clica no link de email no rodapé.

| Parâmetro | Tipo | Valores possíveis |
|---|---|---|
| `event` | string | `email_click` |

**Uso sugerido no GTM:**
- Trigger: Custom Event = `email_click`
- Tag GA4: Event name = `email_click`

---

### 5. `form_submit` — Envio do formulário de contato

Disparado quando o visitante envia o formulário de diagnóstico gratuito.

| Parâmetro | Tipo | Valores possíveis |
|---|---|---|
| `event` | string | `form_submit` |
| `form_name` | string | `diagnostico_gratuito` |
| `form_service` | string | Valor selecionado no campo "Serviço de interesse" |

**Uso sugerido no GTM:**
- Trigger: Custom Event = `form_submit`
- Tag GA4: Event name = `form_submit`, parâmetros `form_name`, `form_service`
- **Conversão principal** — marcar como conversão no GA4 e Google Ads

---

## Configuração Recomendada no GTM

### Tags a criar:

1. **GA4 Configuration Tag** — com o Measurement ID do GA4
2. **GA4 Event - CTA Click** — evento `cta_click` com parâmetro `click_location`
3. **GA4 Event - WhatsApp Click** — evento `whatsapp_click` com parâmetro `click_location`
4. **GA4 Event - Phone Click** — evento `phone_click` com parâmetro `phone_number`
5. **GA4 Event - Email Click** — evento `email_click`
6. **GA4 Event - Form Submit** — evento `form_submit` com parâmetros `form_name`, `form_service`
7. **Google Ads Conversion - WhatsApp** (se aplicável)
8. **Google Ads Conversion - Form Submit** (se aplicável)

### Variáveis do dataLayer a criar:

| Nome da variável | Data Layer Variable Name |
|---|---|
| dlv - click_location | `click_location` |
| dlv - phone_number | `phone_number` |
| dlv - form_name | `form_name` |
| dlv - form_service | `form_service` |

### Conversões sugeridas (prioridade):

1. **`form_submit`** — Lead direto (maior valor)
2. **`whatsapp_click`** — Lead via WhatsApp (alto valor)
3. **`phone_click`** — Lead via telefone (médio valor)
4. **`cta_click`** — Intenção / micro-conversão (baixo valor, útil para otimização)

---

## Teste

Para testar os eventos, usar o **GTM Preview Mode** (Tag Assistant):
1. Acessar tagmanager.google.com > Preview
2. Inserir a URL do site
3. Clicar nos botões e verificar se os eventos aparecem no painel
4. Verificar se as variáveis do dataLayer estão populadas corretamente
