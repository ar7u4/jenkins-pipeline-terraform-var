
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0208bcd6135946a00","subnet-02ba67692cb365867","subnet-0f04a242cb2e3701b",]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0208bcd6135946a00","subnet-02ba67692cb365867","subnet-0f04a242cb2e3701b",]

        tags = {
             "Name" =  "node1"
         } 
  }
}