//
//  WikipediaModel.swift
//  TripTrap
//
//  Created by シェイミ on 12/12/2022.
//

import Foundation

struct Unknown: Codable {
  struct Entity: Codable {
    struct Q897839: Codable {
      struct Label: Codable {
        struct De: Codable {
          let language: String
          let value: String
        }

        struct Ru: Codable {
          let language: String
          let value: String
        }

        struct En: Codable {
          let language: String
          let value: String
        }

        struct Hu: Codable {
          let language: String
          let value: String
        }

        struct Nap: Codable {
          let language: String
          let value: String
        }

        struct It: Codable {
          let language: String
          let value: String
        }

        struct Nl: Codable {
          let language: String
          let value: String
        }

        struct Fr: Codable {
          let language: String
          let value: String
        }

        struct Zh: Codable {
          let language: String
          let value: String
        }

        struct Ja: Codable {
          let language: String
          let value: String
        }

        struct Pt: Codable {
          let language: String
          let value: String
        }

        struct E: Codable {
          let language: String
          let value: String
        }

        struct Ka: Codable {
          let language: String
          let value: String
        }

        struct Bg: Codable {
          let language: String
          let value: String
        }

        struct Tl: Codable {
          let language: String
          let value: String
        }

        struct Fa: Codable {
          let language: String
          let value: String
        }

        struct Ca: Codable {
          let language: String
          let value: String
        }

        let de: De
        let ru: Ru
        let en: En
        let hu: Hu
        let nap: Nap
        let it: It
        let nl: Nl
        let fr: Fr
        let zh: Zh
        let ja: Ja
        let pt: Pt
        let es: E
        let ka: Ka
        let bg: Bg
        let tl: Tl
        let fa: Fa
        let ca: Ca
      }

      struct Description: Codable {
        struct De: Codable {
          let language: String
          let value: String
        }

        struct Fr: Codable {
          let language: String
          let value: String
        }

        struct Nl: Codable {
          let language: String
          let value: String
        }

        struct En: Codable {
          let language: String
          let value: String
        }

        struct Sq: Codable {
          let language: String
          let value: String
        }

        struct It: Codable {
          let language: String
          let value: String
        }

        struct Br: Codable {
          let language: String
          let value: String
        }

        struct Pt: Codable {
          let language: String
          let value: String
        }

        struct E: Codable {
          let language: String
          let value: String
        }

        struct Fi: Codable {
          let language: String
          let value: String
        }

        struct Eo: Codable {
          let language: String
          let value: String
        }

        struct Cy: Codable {
          let language: String
          let value: String
        }

        struct Sv: Codable {
          let language: String
          let value: String
        }

        struct Ar: Codable {
          let language: String
          let value: String
        }

        let de: De
        let fr: Fr
        let nl: Nl
        let en: En
        let sq: Sq
        let it: It
        let br: Br
        let pt: Pt
        let es: E
        let fi: Fi
        let eo: Eo
        let cy: Cy
        let sv: Sv
        let ar: Ar
      }

      struct Alias: Codable {
        struct Nap: Codable {
          let language: String
          let value: String
        }

        struct It: Codable {
          let language: String
          let value: String
        }

        struct Ja: Codable {
          let language: String
          let value: String
        }

        let nap: [Nap]
        let it: [It]
        let ja: [Ja]
      }

      struct Claim: Codable {
        struct P373: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
        }

        struct P625: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let latitude: Double
                let longitude: Double
//                let altitude: Any?
                let precision: Double
                let globe: URL
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]?
              let p248: [P248]?

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p248 = "P248"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P17: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]?
              let p248: [P248]?

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p248 = "P248"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P131: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]?
              let p248: [P248]?
              let p854: [P854]?
              let p577: [P577]?

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P646: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P856: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: URL
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Qualifier: Codable {
            struct P407: Codable {
              struct Datavalue: Codable {
                struct Value: Codable {
                  let entityType: String
                  let numericID: Int
                  let id: String

                  private enum CodingKeys: String, CodingKey {
                    case entityType = "entity-type"
                    case numericID = "numeric-id"
                    case id
                  }
                }

                let value: Value
                let type: String
              }

              let snaktype: String
              let property: String
              let hash: String
              let datavalue: Datavalue
              let datatype: String
            }

            let p407: [P407]

            private enum CodingKeys: String, CodingKey {
              case p407 = "P407"
            }
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]?
              let p577: [P577]?

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let qualifiers: Qualifier
          let qualifiersOrder: [String]
          let id: String
          let rank: String
          let references: [Reference]

          private enum CodingKeys: String, CodingKey {
            case mainsnak
            case type
            case qualifiers
            case qualifiersOrder = "qualifiers-order"
            case id
            case rank
            case references
          }
        }

        struct P1566: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P149: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P910: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P31: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]?
        }

        struct P214: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
        }

        struct P244: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
        }

        struct P140: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P708: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P154: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P4656: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]
              let p4656: [P4656]

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p4656 = "P4656"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P18: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P4656: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]
              let p4656: [P4656]

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p4656 = "P4656"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P6375: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let text: String
                let language: String
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P4656: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]?
              let p4656: [P4656]?
              let p248: [P248]?
              let p854: [P854]?
              let p577: [P577]?

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p4656 = "P4656"
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P571: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let time: String
                let timezone: Int
                let before: Int
                let after: Int
                let precision: Int
                let calendarmodel: URL
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P4656: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]
              let p4656: [P4656]

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p4656 = "P4656"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P7859: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P214: Codable {
                struct Datavalue: Codable {
                  let value: String
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p214: [P214]

              private enum CodingKeys: String, CodingKey {
                case p214 = "P214"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P281: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P4656: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]?
              let p4656: [P4656]?
              let p248: [P248]?
              let p854: [P854]?
              let p577: [P577]?

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p4656 = "P4656"
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P1705: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let text: String
                let language: String
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P143: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P4656: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p143: [P143]
              let p4656: [P4656]

              private enum CodingKeys: String, CodingKey {
                case p143 = "P143"
                case p4656 = "P4656"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P1435: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P1329: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P968: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P2900: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P5782: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              let value: String
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
        }

        struct P1174: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let amount: String
                let unit: String
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Qualifier: Codable {
            struct P585: Codable {
              struct Datavalue: Codable {
                struct Value: Codable {
                  let time: String
                  let timezone: Int
                  let before: Int
                  let after: Int
                  let precision: Int
                  let calendarmodel: URL
                }

                let value: Value
                let type: String
              }

              let snaktype: String
              let property: String
              let hash: String
              let datavalue: Datavalue
              let datatype: String
            }

            let p585: [P585]

            private enum CodingKeys: String, CodingKey {
              case p585 = "P585"
            }
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let qualifiers: Qualifier
          let qualifiersOrder: [String]
          let id: String
          let rank: String
          let references: [Reference]

          private enum CodingKeys: String, CodingKey {
            case mainsnak
            case type
            case qualifiers
            case qualifiersOrder = "qualifiers-order"
            case id
            case rank
            case references
          }
        }

        struct P2283: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P2848: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P2846: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        struct P1128: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let amount: String
                let unit: String
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Qualifier: Codable {
            struct P585: Codable {
              struct Datavalue: Codable {
                struct Value: Codable {
                  let time: String
                  let timezone: Int
                  let before: Int
                  let after: Int
                  let precision: Int
                  let calendarmodel: URL
                }

                let value: Value
                let type: String
              }

              let snaktype: String
              let property: String
              let hash: String
              let datavalue: Datavalue
              let datatype: String
            }

            let p585: [P585]

            private enum CodingKeys: String, CodingKey {
              case p585 = "P585"
            }
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let qualifiers: Qualifier
          let qualifiersOrder: [String]
          let id: String
          let rank: String
          let references: [Reference]

          private enum CodingKeys: String, CodingKey {
            case mainsnak
            case type
            case qualifiers
            case qualifiersOrder = "qualifiers-order"
            case id
            case rank
            case references
          }
        }

        struct P2046: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let amount: String
                let unit: URL
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Qualifier: Codable {
            struct P518: Codable {
              struct Datavalue: Codable {
                struct Value: Codable {
                  let entityType: String
                  let numericID: Int
                  let id: String

                  private enum CodingKeys: String, CodingKey {
                    case entityType = "entity-type"
                    case numericID = "numeric-id"
                    case id
                  }
                }

                let value: Value
                let type: String
              }

              let snaktype: String
              let property: String
              let hash: String
              let datavalue: Datavalue
              let datatype: String
            }

            struct P459: Codable {
              struct Datavalue: Codable {
                struct Value: Codable {
                  let entityType: String
                  let numericID: Int
                  let id: String

                  private enum CodingKeys: String, CodingKey {
                    case entityType = "entity-type"
                    case numericID = "numeric-id"
                    case id
                  }
                }

                let value: Value
                let type: String
              }

              let snaktype: String
              let property: String
              let hash: String
              let datavalue: Datavalue
              let datatype: String
            }

            struct P585: Codable {
              struct Datavalue: Codable {
                struct Value: Codable {
                  let time: String
                  let timezone: Int
                  let before: Int
                  let after: Int
                  let precision: Int
                  let calendarmodel: URL
                }

                let value: Value
                let type: String
              }

              let snaktype: String
              let property: String
              let hash: String
              let datavalue: Datavalue
              let datatype: String
            }

            let p518: [P518]
            let p459: [P459]
            let p585: [P585]?

            private enum CodingKeys: String, CodingKey {
              case p518 = "P518"
              case p459 = "P459"
              case p585 = "P585"
            }
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let qualifiers: Qualifier
          let qualifiersOrder: [String]
          let id: String
          let rank: String
          let references: [Reference]

          private enum CodingKeys: String, CodingKey {
            case mainsnak
            case type
            case qualifiers
            case qualifiersOrder = "qualifiers-order"
            case id
            case rank
            case references
          }
        }

        struct P1436: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let amount: String
                let unit: URL
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Qualifier: Codable {
            struct P518: Codable {
              struct Datavalue: Codable {
                struct Value: Codable {
                  let entityType: String
                  let numericID: Int
                  let id: String

                  private enum CodingKeys: String, CodingKey {
                    case entityType = "entity-type"
                    case numericID = "numeric-id"
                    case id
                  }
                }

                let value: Value
                let type: String
              }

              let snaktype: String
              let property: String
              let hash: String
              let datavalue: Datavalue
              let datatype: String
            }

            struct P585: Codable {
              struct Datavalue: Codable {
                struct Value: Codable {
                  let time: String
                  let timezone: Int
                  let before: Int
                  let after: Int
                  let precision: Int
                  let calendarmodel: URL
                }

                let value: Value
                let type: String
              }

              let snaktype: String
              let property: String
              let hash: String
              let datavalue: Datavalue
              let datatype: String
            }

            let p518: [P518]
            let p585: [P585]

            private enum CodingKeys: String, CodingKey {
              case p518 = "P518"
              case p585 = "P585"
            }
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let qualifiers: Qualifier
          let qualifiersOrder: [String]
          let id: String
          let rank: String
          let references: [Reference]

          private enum CodingKeys: String, CodingKey {
            case mainsnak
            case type
            case qualifiers
            case qualifiersOrder = "qualifiers-order"
            case id
            case rank
            case references
          }
        }

        struct P912: Codable {
          struct Mainsnak: Codable {
            struct Datavalue: Codable {
              struct Value: Codable {
                let entityType: String
                let numericID: Int
                let id: String

                private enum CodingKeys: String, CodingKey {
                  case entityType = "entity-type"
                  case numericID = "numeric-id"
                  case id
                }
              }

              let value: Value
              let type: String
            }

            let snaktype: String
            let property: String
            let hash: String
            let datavalue: Datavalue
            let datatype: String
          }

          struct Reference: Codable {
            struct Snak: Codable {
              struct P248: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let entityType: String
                    let numericID: Int
                    let id: String

                    private enum CodingKeys: String, CodingKey {
                      case entityType = "entity-type"
                      case numericID = "numeric-id"
                      case id
                    }
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P854: Codable {
                struct Datavalue: Codable {
                  let value: URL
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              struct P577: Codable {
                struct Datavalue: Codable {
                  struct Value: Codable {
                    let time: String
                    let timezone: Int
                    let before: Int
                    let after: Int
                    let precision: Int
                    let calendarmodel: URL
                  }

                  let value: Value
                  let type: String
                }

                let snaktype: String
                let property: String
                let hash: String
                let datavalue: Datavalue
                let datatype: String
              }

              let p248: [P248]
              let p854: [P854]
              let p577: [P577]

              private enum CodingKeys: String, CodingKey {
                case p248 = "P248"
                case p854 = "P854"
                case p577 = "P577"
              }
            }

            let hash: String
            let snaks: Snak
            let snaksOrder: [String]

            private enum CodingKeys: String, CodingKey {
              case hash
              case snaks
              case snaksOrder = "snaks-order"
            }
          }

          let mainsnak: Mainsnak
          let type: String
          let id: String
          let rank: String
          let references: [Reference]
        }

        let p373: [P373]
        let p625: [P625]
        let p17: [P17]
        let p131: [P131]
        let p646: [P646]
        let p856: [P856]
        let p1566: [P1566]
        let p149: [P149]
        let p910: [P910]
        let p31: [P31]
        let p214: [P214]
        let p244: [P244]
        let p140: [P140]
        let p708: [P708]
        let p154: [P154]
        let p18: [P18]
        let p6375: [P6375]
        let p571: [P571]
        let p7859: [P7859]
        let p281: [P281]
        let p1705: [P1705]
        let p1435: [P1435]
        let p1329: [P1329]
        let p968: [P968]
        let p2900: [P2900]
        let p5782: [P5782]
        let p1174: [P1174]
        let p2283: [P2283]
        let p2848: [P2848]
        let p2846: [P2846]
        let p1128: [P1128]
        let p2046: [P2046]
        let p1436: [P1436]
        let p912: [P912]

        private enum CodingKeys: String, CodingKey {
          case p373 = "P373"
          case p625 = "P625"
          case p17 = "P17"
          case p131 = "P131"
          case p646 = "P646"
          case p856 = "P856"
          case p1566 = "P1566"
          case p149 = "P149"
          case p910 = "P910"
          case p31 = "P31"
          case p214 = "P214"
          case p244 = "P244"
          case p140 = "P140"
          case p708 = "P708"
          case p154 = "P154"
          case p18 = "P18"
          case p6375 = "P6375"
          case p571 = "P571"
          case p7859 = "P7859"
          case p281 = "P281"
          case p1705 = "P1705"
          case p1435 = "P1435"
          case p1329 = "P1329"
          case p968 = "P968"
          case p2900 = "P2900"
          case p5782 = "P5782"
          case p1174 = "P1174"
          case p2283 = "P2283"
          case p2848 = "P2848"
          case p2846 = "P2846"
          case p1128 = "P1128"
          case p2046 = "P2046"
          case p1436 = "P1436"
          case p912 = "P912"
        }
      }

      struct Sitelink: Codable {
        struct Bgwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Dewiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Enwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Eswiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Fawiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Frwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Huwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Itwiki: Codable {
          let site: String
          let title: String
//          let badges: [String]
          let url: URL
        }

        struct Kawiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Napwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Nlwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Ptwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Ruwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Tlwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        struct Zhwiki: Codable {
          let site: String
          let title: String
//          let badges: [Any]
          let url: URL
        }

        let bgwiki: Bgwiki
        let dewiki: Dewiki
        let enwiki: Enwiki
        let eswiki: Eswiki
        let fawiki: Fawiki
        let frwiki: Frwiki
        let huwiki: Huwiki
        let itwiki: Itwiki
        let kawiki: Kawiki
        let napwiki: Napwiki
        let nlwiki: Nlwiki
        let ptwiki: Ptwiki
        let ruwiki: Ruwiki
        let tlwiki: Tlwiki
        let zhwiki: Zhwiki
      }

      let pageid: Int
      let ns: Int
      let title: String
      let lastrevid: Date
      let modified: Date
      let type: String
      let id: String
      let labels: Label
      let descriptions: Description
      let aliases: Alias
      let claims: Claim
      let sitelinks: Sitelink
    }

    let q897839: Q897839

    private enum CodingKeys: String, CodingKey {
      case q897839 = "Q897839"
    }
  }

  let entities: Entity
}
