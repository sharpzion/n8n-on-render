FROM n8nio/n8n

# Exponha a porta padrão
EXPOSE 5678

# Defina variáveis de ambiente essenciais
ENV N8N_BASIC_AUTH_ACTIVE=false \
    N8N_HOST=0.0.0.0 \
    N8N_PORT=5678 \
    N8N_PROTOCOL=http \
    N8N_USER_MANAGEMENT_DISABLED=false \
    N8N_DISABLE_UI=false \
    N8N_AUTH_EXCLUDE_ENDPOINTS=/setup \
    N8N_DIAGNOSTICS_ENABLED=false \
    N8N_RUNCODE_DISABLE_EXECUTION_SANDBOX=true \
    TZ=America/Sao_Paulo

# Se quiser forçar criação do usuário com email, use essas (opcional)
# ENV N8N_EMAIL_MODE=smtp \
#     N8N_SMTP_HOST=smtp.example.com \
#     N8N_SMTP_PORT=587 \
#     N8N_SMTP_USER=usuario \
#     N8N_SMTP_PASS=senha \
#     N8N_SMTP_SENDER=email@dominio.com
