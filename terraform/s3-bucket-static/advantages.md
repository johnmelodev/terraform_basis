### 1. **Infraestrutura como Código (IaC)**:
   - Ao usar o Terraform, você define sua infraestrutura em arquivos de configuração (geralmente com a extensão `.tf`). Isso significa que toda a infraestrutura pode ser versionada, revisada e gerenciada como qualquer outro código fonte.
   - Você pode armazenar esses arquivos em um sistema de controle de versão como o Git, permitindo que múltiplos desenvolvedores trabalhem na mesma infraestrutura de forma colaborativa.

### 2. **Padronização**:
   - O Terraform permite criar padrões e melhores práticas para a criação e gerenciamento da infraestrutura. Por exemplo, você pode definir templates reutilizáveis para recursos comuns, como grupos de segurança ou configurações de rede.
   - Esses padrões podem ser aplicados consistentemente em diferentes ambientes (desenvolvimento, teste, produção), garantindo que a infraestrutura seja consistente e previsível.

### 3. **Visibilidade Centralizada**:
   - Com o Terraform, você tem uma visão centralizada de toda a infraestrutura. Todos os recursos e suas configurações são definidos em arquivos de configuração, tornando mais fácil entender e auditar a infraestrutura.
   - Além disso, o Terraform fornece comandos como `terraform state` que permitem visualizar o estado atual da infraestrutura e compará-lo com a configuração desejada.

### 4. **Automatização**:
   - Uma vez que a infraestrutura está definida em código, você pode automatizar todo o processo de provisionamento e gerenciamento. Isso inclui a criação, alteração e remoção de recursos, bem como a execução de tarefas de manutenção e monitoramento.
   - A automatização reduz erros humanos, aumenta a eficiência e permite que as equipes se concentrem em outras tarefas mais estratégicas.

### 5. **Reprodutibilidade**:
   - Com o Terraform, você pode criar ambientes idênticos facilmente. Isso é especialmente útil para testes e desenvolvimento, onde você precisa de ambientes consistentes para reproduzir problemas ou validar mudanças.
   - Você também pode usar o Terraform para criar ambientes de pré-produção que sejam fiéis ao ambiente de produção, permitindo testar mudanças antes de implementá-las no ambiente real.

### 6. **Gerenciamento de Dependências**:
   - O Terraform lida automaticamente com as dependências entre recursos. Por exemplo, se um recurso depende de outro, o Terraform garante que o recurso dependente seja criado primeiro.
   - pode limitar recursos para evitar estourar processamento das maquinas aws
   - Isso elimina a necessidade de gerenciar manualmente as dependências e evita problemas causados por recursos não criados na ordem correta.

### 7. **Segurança**:
   - Ao usar o Terraform, você pode implementar políticas de segurança consistentes em toda a infraestrutura. Por exemplo, você pode definir regras de firewall, controles de acesso e outras medidas de segurança em seus arquivos de configuração.
   - Além disso, o Terraform fornece mecanismos para proteger credenciais e outras informações sensíveis, como o uso de variáveis de ambiente e arquivos de configuração separados.
